import 'package:flutter/material.dart';
import 'package:project/src/configs/app_route.dart';
class Menu {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Function(BuildContext context) onTap;


  const Menu({
    this.title,
    this.icon,
    this.iconColor = Colors.grey,
    this.onTap,
  });
}


class MenuViewModel {
  MenuViewModel();


  List<Menu> get items => <Menu>[
    Menu(
      iconColor: Colors.red,
      title: 'โปรไฟล์',
      icon: Icons.person,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.infoRoute);
      },
    ),
    Menu(
      iconColor: Colors.blue,
      title: 'ประเภทห้องเช้า',
      icon: Icons.roofing,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.roomRoute);
      },
    ),
    Menu(
      iconColor: Colors.amber,
      title: 'เปรียบเทียบราคาห้องเช่า',
      icon: Icons.monetization_on_outlined,
      onTap: (context) {
        //Navigator.pushNamed(context, Constant.mapRoute);
      },
    ),
    Menu(
      iconColor: Colors.green,
      title: 'เพิ่มห้องเช่า',
      icon: Icons.addchart,
      onTap: (context) {
        Navigator.pushNamed(context, AppRoute.roomaddRoute);
      },
    ),
  ];
}