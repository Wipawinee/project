import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySignUpPage extends StatefulWidget {
  MySignUpPage({Key key}) : super(key: key);

  @override
  _MySignUpPageState createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สร้างบัญชีผู้ใช้'),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/3309/3309931.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 10),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'username',
                      icon: Icon(Icons.person_add),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'surname',
                      icon: Icon(Icons.person_add_alt_1),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'gmail',
                        hintText: 'xx@gmail.com',
                      icon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'password',
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    child: Text('ลงทะเบียน'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    child: Text('เข้าสู่ระบบ'),
                    onPressed: () {
                      //เอาไว้เชื่อมปลุ่ม
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    child: Text('ยกเลิก'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      padding:
                      EdgeInsets.symmetric(horizontal: 42, vertical: 10),
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
