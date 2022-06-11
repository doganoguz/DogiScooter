import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:scooter/constant/color.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        titleSpacing: 10.0,
        backgroundColor: NowUIColors.homeclr,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/img/sld.png',
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.shopping_basket),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: NowUIColors.homeclr,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: <Widget>[
          new Image.asset(
            'assets/img/product_1.png',
            fit: BoxFit.cover,
          ),
          new Container(
              padding: EdgeInsets.only(left: 38, right: 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.whatshot, color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        primary: NowUIColors.btn, // <-- Button color
                        // <-- Splash color
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "25",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: NowUIColors.dashbeyaz,
                              fontSize: 25,
                              fontFamily: 'Roboto-Regular',
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "km/h",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: NowUIColors.dashbeyaz,
                              fontSize: 10,
                              fontFamily: 'Roboto-Regular',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Max Speed",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: NowUIColors.btn,
                          fontSize: 10,
                          fontFamily: 'Roboto-Regular',
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
                  SizedBox(
                    width: 60,
                  ),
                  Column(children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.bolt, color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        primary: NowUIColors.btn, // <-- Button color
                        // <-- Splash color
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "350",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: NowUIColors.dashbeyaz,
                              fontSize: 25,
                              fontFamily: 'Roboto-Regular',
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "w",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: NowUIColors.dashbeyaz,
                              fontSize: 10,
                              fontFamily: 'Roboto-Regular',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Motor",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: NowUIColors.btn,
                          fontSize: 10,
                          fontFamily: 'Roboto-Regular',
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
                  SizedBox(
                    width: 60,
                  ),
                  Column(children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.battery_charging_full,
                          color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        primary: NowUIColors.btn, // <-- Button color
                        // <-- Splash color
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "6.4",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: NowUIColors.dashbeyaz,
                              fontSize: 25,
                              fontFamily: 'Roboto-Regular',
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Ah",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: NowUIColors.dashbeyaz,
                              fontSize: 10,
                              fontFamily: 'Roboto-Regular',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Battery",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: NowUIColors.btn,
                          fontSize: 10,
                          fontFamily: 'Roboto-Regular',
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
                ],
              )),
          SizedBox(
            height: 50,
          ),
          new Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "X7 E-Scooter",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: NowUIColors.dashbeyaz,
                              fontSize: 35,
                              fontFamily: 'Roboto-Medium',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ]),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          new Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          "You don't need to worry about your battery \n\nwhether the road is flat or wet, since our battery \n\nis not placed under the standing platform.",
                          style: TextStyle(
                            color: NowUIColors.dashbeyaz,
                            fontSize: 13,
                            fontFamily: 'Roboto-Regular',
                          ),
                        ),
                      ],
                    ),
                  ]),
                ],
              )),
        ]),
      )),
    );
  }
}
