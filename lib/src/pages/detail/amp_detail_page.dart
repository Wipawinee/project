import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/src/configs/api.dart';
import 'package:project/src/pages/model/amp_model.dart';

class ApmDetailPage extends StatefulWidget {
  @override
  _ApmDetailPageState createState() => _ApmDetailPageState();
}

class _ApmDetailPageState extends State<ApmDetailPage> {
  Apartment _apmModel;
  double rating = 0;
  @override
  void initState() {
    _apmModel = Apartment();
    super.initState();
  }

  Widget build(BuildContext context) {
    Object arguments = ModalRoute.of(context).settings.arguments;
    if (arguments is Apartment) {
      _apmModel = arguments;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(_apmModel.apmName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 290,
              child: Image.network(API.APARTMENT_IMAGE + _apmModel.apmImage),
            ),
            Text(
              'Name : ' + _apmModel.apmName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            Container(),
            SizedBox(
              height: 20,
            ),
            Text(
              'รายละเอียด',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              _apmModel.apmDetail,
              textAlign: TextAlign.center,
            ),
            // ButtonBar(
            //   alignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(icon: Icon(Icons.favorite_border,size: 25, color: Colors.red,),
            //       onPressed: (){},
            //     ),
            //     IconButton(icon: Icon(Icons.add_alert_outlined,size: 25, color: Colors.purple,),
            //       onPressed: (){},
            //     ),
            //     IconButton(icon: Icon(Icons.share,size: 25, color: Colors.amber,),
            //       onPressed: (){},
            //     ),
            //     TextButton(
            //         child: Text('Review'),
            //         onPressed: () {
            //           print('Pressed');
            //         }
            //     )
            //   ],
            // ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                //Navigator.pushNamed(context, AppRoute.videoRoute, arguments: _condoModel.id);
              },
              style: ElevatedButton.styleFrom(primary: Colors.indigo),
              child: Text('จองห้องพัก'),
            ),
            SizedBox(
              height:30,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Rating : $rating'
                    '',
                    style: TextStyle(fontSize: 15),
                  ),
                  RatingBar.builder(
                    minRating: 1,
                    itemBuilder: (context, _) =>
                        Icon(Icons.star, color: Colors.amber),
                    updateOnDrag: true,
                    onRatingUpdate: (rating) => setState(() {
                      this.rating = rating;
                    }),
                  ),
                  TextButton(
                    child: Text(
                      'Show Dialog',
                      style: TextStyle(fontSize: 15),
                    ),
                    //onPressed: () => showRating(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Comment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'comment..',
                prefixIcon: Icon(Icons.send),
                hintStyle: TextStyle(color: Colors.grey),
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Colors.black38, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.black38, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
