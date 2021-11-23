import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/src/configs/api.dart';
import 'package:project/src/pages/model/dormitory_model.dart';

class DmDetailPage extends StatefulWidget {
  @override
  _DmDetailPageState createState() => _DmDetailPageState();
}

class _DmDetailPageState extends State<DmDetailPage> {
  Dormitory _domitoryModel;
  double rating = 0;
  @override
  void initState() {
    _domitoryModel = Dormitory();
    super.initState();
  }

  Widget build(BuildContext context) {
    Object arguments = ModalRoute.of(context).settings.arguments;
    if (arguments is Dormitory) {
      _domitoryModel = arguments;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_domitoryModel.dmName),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
             height: 320,
              child: Image.network(
                  API.DORMITORY_IMAGE + _domitoryModel.dmImage),
            ),
            Text(
              _domitoryModel.dmName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'รายละเอียด',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(_domitoryModel.dmDetail,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, AppRoute.condodetailRoute,
                //     arguments: _domitoryModel.dmId);
              },
              style: ElevatedButton.styleFrom(primary: Colors.indigo),
              child: Text('จองห้องพัก'),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Rating : $rating',
                    style: TextStyle(fontSize: 15),
                  ),
                  RatingBar.builder(
                    minRating: 1,
                    itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
                    updateOnDrag: true,
                    onRatingUpdate: (rating) => setState((){
                      this.rating = rating;
                    }),
                  ),
                  TextButton(
                    child: Text(
                      'Show Dialog',
                      style: TextStyle(fontSize: 15),
                    ),
                    // onPressed: () => showRating(),
                  ),
                ],
              ),
            ),
            Text(
              'Comment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
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
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
  showRating() => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Rate This App'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Please leave a star rating',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20,),
        ],
      ),
      actions: [
        TextButton(
          child: Text(
            'OK',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    ),
  );
}