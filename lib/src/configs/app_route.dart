
import 'package:flutter/material.dart';
import 'package:project/src/pages/Detail/condo_detail_page.dart';
import 'package:project/src/pages/detail/amp_detail_page.dart';
import 'package:project/src/pages/detail/dormitory_detail_page.dart';
import 'package:project/src/pages/home/home_page.dart';
import 'package:project/src/pages/info/info.page.dart';
import 'package:project/src/pages/login/login_page.dart';
import 'package:project/src/pages/map/google_map_page.dart';
//import 'package:project/src/pages/model/dormitory_model.dart';
import 'package:project/src/pages/pages.dart';
import 'package:project/src/pages/room/apm_page.dart';
import 'package:project/src/pages/room/condo_page.dart';
import 'package:project/src/pages/room/dormitory_page.dart';
import 'package:project/src/pages/room/room_page.dart';
import 'package:project/src/pages/subscribe/subscribe_page.dart';
import 'package:project/src/roomadd/roomadd_page.dart';


class AppRoute {
  static const homeRoute = 'home';
  static const infoRoute = 'info';
  static const LoginRoute = 'login';
  static const upcomingMovieRoute = 'upcoming';
  static const movieDetailRoute = 'movie';
  static const videoRoute = 'video';
  static const scanRoute = 'scan';
  static const qrGenRoute = "qrCodeScan";
  static const gameRoute = 'game';
  static const gameManageRoute = 'gameManage';
  static const mapRoute = 'map';
  static const subscribeRoute ='subscribe';
  static const roomRoute ='room';
  static const condoRoute ='condo';
  static const ApartmentRoute = 'Apartment';
  static const condoDetailRoute = 'condoDetail';
  static const ampDetailRoute = 'ampDetail';
  static const roomaddRoute = 'roomadd';
  static const dormRoute = 'dorm';
  static const dormDetailRoute = 'dormDetail';


  final _route = <String, WidgetBuilder>{
    homeRoute : (context) => HomePage(),
    infoRoute : (context) => InfoPage(),
    LoginRoute : (context) => LoginPage(),
    mapRoute : (context) => GoogleMapPage(),
    subscribeRoute : (context) => MySignUpPage(),
    roomRoute : (context) => RoomPage(),
    condoRoute : (context) => CondoPage (),
    ApartmentRoute : (context) => ApmPage(),
    condoDetailRoute : (context) => CondoDetailPage (),
    ampDetailRoute : (context) => ApmDetailPage (),
    roomaddRoute : (context) => RoomaddPage (),
    dormRoute : (context) => DmPage(),
    dormDetailRoute : (context) => DmDetailPage(),


  };
  get getAll => _route;
} //end