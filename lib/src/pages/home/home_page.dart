import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/src/configs/app_route.dart';
import 'package:project/src/configs/app_setting.dart';
import 'package:project/src/widgets/menu_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final List<String> images = [
    'https://cdn-images.prod.thinkofliving.com/wp-content/uploads/1/2019/09/15214715/The-Panora-Pattaya02-key-visual.jpg',
    'https://www.ipattaya.co/wp-content/uploads/2015/12/duplex.jpg',
    'https://pix10.agoda.net/hotelImages/2613332/-1/31da9215c84de5e9c9623712e3cc945e.jpg?s=1024x768',
    'https://images.trvl-media.com/hotels/24000000/23230000/23227700/23227622/965513fd.jpg?impolicy=fcrop&w=670&h=385&p=1&q=medium',
    'https://www.livinginsider.com/upload/topic453/5f578fb26ae5f_93379.jpeg',
    'https://www.ipattaya.co/wp-content/uploads/2015/12/000892.jpg',
    'http://research.terrabkk.com/uploads/property_img/fc6070daeb6dc0a2832483b2ae7709b7.jpg',
  ];


  List<Map<String, String>> imgArray = [
    {
      "img":
          "https://pix10.agoda.net/hotelImages/193/1934998/1934998_17012511570050543652.jpg?s=1024x768",
      "title": "Baan Ari Pool Villa",
      "description":
          " ",
      "price": "\฿5200",
      "page": "login"
    },

    {
      "img":
          "https://pix10.agoda.net/hotelImages/685061/-1/0fa258d4e7abacfd5c4aacf6913ebb0f.jpg?s=1024x768",
      "title": "The Ville Jomtien",
      "description":
          " ",
      "price": "\฿4500",
      "page": "info"
    },

    {
      "img":
          "https://pix1.agoda.net/hotelimages/agoda-homes/5237042/a4b97f1a2343f9b9472cb15b44719522.jpg",
      "title": "Intira Villas",
      "description":
          " ",
      "price": "\฿4800",
      "page": "upcoming"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/mini.jpg'),
              ),
              accountName: Text(
                'Wipawinee Panmee',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontFamily: 'Palatino',
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                '624235017@parichat.skru.ac.th',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: 'Palatino',
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/il.JPG',),
                fit: BoxFit.cover,
              )),
            ),
            ...MenuViewModel()
                .items
                .map((e) => ListTile(
                      leading: Icon(
                        e.icon,
                        color: e.iconColor,
                      ),
                      title: Text(e.title),
                      onTap: () {
                        e.onTap(context);
                      },
                    ))
                .toList(),
            Spacer(),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.indigo,
              ),
              title: const Text('ออกจากระบบ'),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove(AppSetting.userNameSetting);
                prefs.remove(AppSetting.passwordSetting);
                Navigator.pushNamed(context, AppRoute.LoginRoute);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text('หน้าหลัก'), backgroundColor: Colors.indigo),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/py.jpg'),
          alignment: Alignment.topCenter,
          //fit: BoxFit.cover,
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 300),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.homeRoute);
                    },
                    child: Container(
                      width: 80,
                      height: 75,
                      decoration: ShapeDecoration(
                        color: Colors.indigo.shade50,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        image: DecorationImage(
                            image: AssetImage('assets/images/house.png'),
                            scale: 10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.roomRoute);
                    },
                    child: Container(
                      width: 80,
                      height: 75,
                      decoration: ShapeDecoration(
                        color: Colors.indigo.shade50,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        image: DecorationImage(
                            image: AssetImage('assets/images/cond5.png'),
                            scale: 10),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.mapRoute);
                    },
                    child: Container(
                      width: 80,
                      height: 75,
                      decoration: ShapeDecoration(
                        color: Colors.indigo.shade50,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/map1.png',
                            ),
                            scale: 10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'ที่พักในพัทยา - ลดสูงสุด 80% ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      //Navigator.pushNamed(context, AppRoute.roomRoute);
                    },
                    child: Container(
                      width: 80,
                      height: 75,
                      decoration: ShapeDecoration(
                        color: Colors.indigo.shade50,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        image: DecorationImage(
                            image: AssetImage('assets/images/pricing.png'),
                            scale: 10),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.roomaddRoute);
                    },
                    child: Container(
                      width: 80,
                      height: 75,
                      decoration: ShapeDecoration(
                        color: Colors.indigo.shade50,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/hh1.png',
                            ),
                            scale: 10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              CarouselSlider.builder(
                itemCount: images.length,
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                itemBuilder: (context, index, realIdx) {
                  return Container(
                    child: Center(
                        child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                      width: 2000,
                      height: 1000,
                    )),
                  );
                },
              ),
              SizedBox(height: 20),
              CarouselSlider(
                items: imgArray
                    .map((item) => GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, item["page"]);
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.4),
                                          blurRadius: 8,
                                          spreadRadius: 0.3,
                                          offset: Offset(0, 3))
                                    ]),
                                    child: AspectRatio(
                                      aspectRatio: 2 / 2,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(4),
                                        child: Image.network(
                                          item["img"],
                                          fit: BoxFit.cover,
                                          alignment: Alignment.topCenter,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Column(
                                    children: [
                                      Text(item["price"],
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black12)),
                                      Text(item["title"],
                                          style: TextStyle(
                                              fontSize: 32,
                                              color: Colors.black)),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16.0, right: 16.0, top: 8),
                                        child: Text(
                                          item["description"],
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black12),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                    height: 530,
                    autoPlay: true,
                    enlargeCenterPage: false,
                    aspectRatio: 2,
                    enableInfiniteScroll: false,
                    initialPage: 0,
                    // viewportFraction: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
} //end class
