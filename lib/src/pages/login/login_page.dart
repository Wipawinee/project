import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:project/src/configs/app_route.dart';
import 'package:project/src/configs/app_setting.dart';
import 'package:project/src/services/network.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHidden = false;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              title: Text('เมนู'),
              backgroundColor: Colors.indigo,
            ),
            ListTile(
              leading: Icon(
                Icons.roofing,
                color: Colors.blue,
              ),
              title: Text('ประเภทห้องเช่า'),
              onTap: () async {
                Navigator.pushNamed(context, AppRoute.roomRoute);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.monetization_on_outlined,
                color: Colors.amber,
              ),
              title: Text('เปรียบเทียบราคาห้องเช่า'),
              onTap: () async {

              },
            ),
            ListTile(
              leading: Icon(
                Icons.login,
                color: Colors.pink,
              ),
              title: Text('ลงชื่อเข้าใช้'),
              onTap: () async {
                Navigator.pushNamed(context, AppRoute.LoginRoute);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('ลงชื่อผู้ใช้'),
        backgroundColor: Colors.indigo,
      ),
      //backgroundColor: Color(0XFFFf48fb1),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/F.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/2170/2170153.png',
                width: 90,
                height: 90,
              ),
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(children: <Widget>[
                  TextField(
                    controller: _usernameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'username',
                      hintText: 'xx@gmail.com',
                      icon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: isHidden,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'password',
                      icon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: isHidden
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: togglePasswordVisibility,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final username = _usernameController.text;
                      final password = _passwordController.text;
                      print('login with  $username  $password');

                      final message = await NetworkService()
                          .validateUserLoginDio(username, password);
                      if (message != 'failed') {
                        print('Login success');
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString(AppSetting.userNameSetting, username);
                        prefs.setString(AppSetting.passwordSetting, password);

                        Navigator.pushNamed(context, AppRoute.homeRoute);
                      } else {
                        print('Login failed');
                        Flushbar(
                          title: "Login Failed",
                          titleColor: Colors.white,
                          backgroundGradient: LinearGradient(
                              colors: [Colors.indigo, Colors.black]),
                          icon: Icon(
                            Icons.cancel_outlined,
                            size: 30,
                            color: Colors.red,
                          ),
                          message: "Login ไม่สำเร็จ",
                          duration: Duration(seconds: 5),
                        )..show(context);
                      }
                    },
                    child: Text('    เข้าสู่ระบบ    '),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      primary: Colors.indigo,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    child: Text('สร้างบัญชีผู้ใช้'),
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoute.subscribeRoute);
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      primary: Colors.indigo,
                    ),
                  ),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }

  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);
}
