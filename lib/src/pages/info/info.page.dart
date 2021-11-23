import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('โปรไฟล์'), backgroundColor: Colors.indigo),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/F.jpg',),
              fit: BoxFit.cover,
            )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/mini.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Wipawinee  Panmee',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontFamily: 'Palatino',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'STUDENT',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'Palatino',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 150,
                height: 30,
                child: Divider(
                  color: Colors.indigo.shade100,
                  thickness: 5,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.indigo,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Nickname: Samild')
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_call,
                      color: Colors.indigo,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Number: 0925436316')
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.vpn_lock,
                      color: Colors.indigo,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('ID: mildmildsaka')
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
