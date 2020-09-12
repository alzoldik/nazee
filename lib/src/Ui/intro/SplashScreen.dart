import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nazeef/src/Ui/auth/userType.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => UserType(),
        ),
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/icons/appIcon.png',
          fit: BoxFit.fitHeight,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
//            Center(
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Container(
//                      width: 200,
//                      height: 300,
//                      child: Image.asset('assets/logo.png')),
//                  SizedBox(height: 130),
//                  Text(
//                    'klfdjhg',
//                    style: TextStyle(
//                      color: Colors.black,
//                      fontSize: 15,
//                    ),
//                  )
//                ],
//              ),
//            )
      ],
    ));
  }
}
