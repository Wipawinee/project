import 'package:flutter/material.dart';
import 'package:project/src/configs/app_route.dart';
//import 'package:project/src/services/network.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  Future<RoomPage> _upcomingMovieModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('ประเภทห้องเช่า')
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/1A.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 5),
              SizedBox(
                width: 200,
                height: 100,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, AppRoute.condoRoute);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  padding: EdgeInsets.all(10),
                  color: Colors.white70,
                  child: Row(
                    children: <Widget>[
                      Image.network('https://cdn-icons-png.flaticon.com/512/2101/2101155.png',
                        width: 60,
                        height: 60,)
                      ,
                      Text(
                        'คอนโดมิเนี่ยน',
                        style: TextStyle(
                          fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, AppRoute.ApartmentRoute);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  padding: EdgeInsets.all(10),
                  color: Colors.white70,
                  child: Row(
                    children: <Widget>[
                      Image.network('https://cdn-icons-png.flaticon.com/512/2188/2188540.png',
                        width: 60,
                        height: 60,)
                      ,
                      SizedBox(width: 5),
                      Text(
                        'อพาร์ทเมนท์',
                        style: TextStyle(
                          fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, AppRoute.dormRoute);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  padding: EdgeInsets.all(10),
                  color: Colors.white70,
                  child: Row(
                    children: <Widget>[
                      Image.network('https://cdn-icons-png.flaticon.com/512/1464/1464155.png',
                        width: 60,
                        height: 60,),
                      Text(
                        'พูลวิลล่า',
                        style: TextStyle(fontSize: 20,
                            color: Colors.black),
                          textAlign: TextAlign.center
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
        ],
      ),
    );
  }
}
