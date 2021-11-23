
import 'package:flutter/material.dart';
import 'package:project/src/configs/app_route.dart';
//import 'package:project/src/configs/app_setting.dart';
import 'package:project/src/pages/home/home_page.dart';
//import 'package:project/src/pages/login/login_page.dart';
//import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoute().getAll,
      theme: ThemeData(primaryColor: Colors.indigoAccent),
      home: HomePage(),
      // home: FutureBuilder(
      //   //future: SharedPreferences.getInstance(),
      //   builder: (context, snapshot) {
      //     if(!snapshot.hasData){
      //       return Container(color: Colors.white,);
      //     }
      //     final token = snapshot.data.toString();
      //     if(token != null){
      //       return HomePage();
      //     }else {
      //       return LoginPage();
      //     }
      //   },
      // ),
    );
  }
} //end class
