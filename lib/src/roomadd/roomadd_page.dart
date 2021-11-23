import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class RoomaddPage extends StatefulWidget {
  RoomaddPage({Key key}) : super(key: key);

  @override
  _RoomaddPageState createState() => _RoomaddPageState();
}

class _RoomaddPageState extends State<RoomaddPage> {
  List<Asset> images = List<Asset>();
  Future<void> loadAssets() async {
    setState(() {
      images = List<Asset>();
    });
    List<Asset> resultList;
    String error;

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
      );
    } catch (e) {}

    if (!mounted) return;

    setState(() {
      images = resultList;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เพิ่มห้องเช่า'),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  ElevatedButton(
                    child: Text('เลือกจากอัลบั้ม'),
                    onPressed: () {
                      GridView.builder(itemCount: images.length,
                          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(childAspectRatio: 1.3, maxCrossAxisExtent: 300),
                          itemBuilder: (context, i) {
                            return AssetThumb(
                                asset: images[i],
                                height: 300,
                                width: MediaQuery.of(context).size.width.toInt());
                          });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      padding:
                      EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                      textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ชื่อห้องเช่า',
                      icon: Icon(Icons.person_add_alt_1),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ราคา THB',
                      //hintText: 'xx@gmail.com',
                      icon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ประะเภทห้องเช่า',
                      icon: Icon(Icons.home_rounded),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'จำกัดเพศของผู้เช่า',
                      icon: Icon(Icons.accessibility),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'เบอร์โทรติดต่อ',
                      icon: Icon(Icons.phone),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'สิ่งอำนวยความสะดวก',
                      icon: Icon(Icons.build),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ที่อยู่',
                      icon: Icon(Icons.add_business),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    child: Text('ส่ง'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      padding:
                      EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                      textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} //end class
