// @dart=2.9
//bu bir Doğan Oğuz projesidir.

//Kuyumu kazmaya çalıştığın kürek benimse SAPINA DİKKAT ET ASLANIMMM EYVALLAH

import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:scooter/auth/sign_in.dart';
import 'package:scooter/auth/sign_up.dart';
import 'package:scooter/constant/color.dart';
import 'package:scooter/page/dashboard/dashboard.dart';
import 'package:scooter/page/onboarding/welcome.dart';
import 'package:scooter/page/product/product.dart';
import 'package:scooter/page/product_details/product_details.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: NowUIColors.statusbar, //statusbar color değiştirme
  ));

  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

//test amk
class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _tryAgain = false;

  _checkWifi() async {
    // the method below returns a Future
    var connectivityResult = await (new Connectivity().checkConnectivity());
    bool connectedToWifi = (connectivityResult == ConnectivityResult.wifi);
    bool connectedToMobile = (connectivityResult == ConnectivityResult.mobile);
    if (!connectedToWifi) {
      print("internet bağlantısı yok");
    } else if (!connectedToMobile) {
      print("mobil veri açık");
    }
    if (_tryAgain != !connectedToWifi) {
      setState(() => _tryAgain = !connectedToWifi);
      print("İnternet bağlantısı tekrar sağlandı");
    }
  }

  @override
  void initState() {
    super.initState();
    _checkWifi();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DogiScooter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            backgroundColor: NowUIColors.homeclr, fontFamily: 'Roboto'),
        initialRoute: '/welcome',
        routes: <String, WidgetBuilder>{
          '/welcome': (BuildContext context) => new Welcome(),
          '/signin': (BuildContext context) => new SignIn(),
          '/signup': (BuildContext context) => new SignUp(),
          '/dashboard': (BuildContext context) => new Dashboard(),
          '/product': (BuildContext context) => new Product(),
          '/productdetails': (BuildContext context) => new ProductDetails(),
        });
  }
}
