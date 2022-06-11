import 'dart:convert';
import 'dart:core';

import 'package:flutter/services.dart';
import 'dart:io';
import 'dart:async';
import 'package:awesome_page_transitions/awesome_page_transitions.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:scooter/constant/color.dart';
import 'package:scooter/page/dashboard/dashboard.dart';
import 'package:simple_icons/simple_icons.dart';

TextEditingController usr = TextEditingController();
TextEditingController psd = TextEditingController();

class Welcome extends StatefulWidget {
  @override
  _WelcomState createState() => _WelcomState();
}

class _WelcomState extends State<Welcome> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? username;
  String? password;

  bool _goster = true;
  var code;

  void _toggle() {
    setState(() {
      _goster = !_goster;
    });
  }

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
  }

  String emailValidator() {
    return 'test';
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("geri bas");

        return Navigator.canPop(context);
      },
      child: Scaffold(
        backgroundColor: NowUIColors.homeclr,
        body: Stack(
          key: _formKey,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/img/login.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  height: 270,
                  width: 700,
                  decoration: BoxDecoration(
                    color: NowUIColors.homeclr.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5)
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(
                            height: 17,
                          ),
                          Text("Welcome to E-Scooter",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: NowUIColors.beyaz,
                                fontSize: 18,
                              )),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Get where you want instantly",
                              style: TextStyle(
                                color: NowUIColors.beyaz,
                                fontSize: 14,
                                fontFamily: 'Roboto-Regular',
                              )),
                          Text("fast, safe and easy",
                              style: TextStyle(
                                color: NowUIColors.beyaz,
                                fontSize: 14,
                                fontFamily: 'Roboto-Regular',
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          ButtonTheme(
                            minWidth: 335.0,
                            height: 50.0,
                            child: FlatButton(
                              textColor: NowUIColors.homeclr,
                              color: NowUIColors.beyaz,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: Dashboard()));
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Text(
                                "Let's Explore!  🛴\u200d",
                                style: TextStyle(
                                  color: NowUIColors.homeclr,
                                  fontSize: 14,
                                  fontFamily: 'Roboto-Regular',
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50.0,
                            width: 335.0,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(color: Colors.white, width: 2),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                              ),
                              child: Text('Login',
                                  style: TextStyle(
                                    color: NowUIColors.beyaz,
                                    fontSize: 14,
                                    fontFamily: 'Roboto-Regular',
                                    height: 1.5,
                                  )),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
