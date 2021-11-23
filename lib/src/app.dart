import 'package:flutter/material.dart';
import 'package:project/src/configs/app_setting.dart';
import 'package:project/src/pages/home/home_page.dart';
import 'package:project/src/pages/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'configs/app_route.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoute().getAll,
      theme: ThemeData(primaryColor: Colors.amber),
       home: FutureBuilder(
      //   future: SharedPreferences.getInstance(),
      //   builder: (context, snapshot) {
      //     if(!snapshot.hasData){
      //       return Container(color: Colors.white,);
      //       }else{
      //       final token = snapshot.data.getString(AppSetting.userNameSetting ?? '');
      //       if(token != null){
      //         return HomePage();
      //       }else{
      //         return LoginPage();
      //       }
      //     }
      //   },
       ),
    );
  }
} //end class
