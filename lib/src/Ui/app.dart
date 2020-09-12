import 'package:flutter/material.dart';
import 'intro/SplashScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: "nazeef",
      theme: ThemeData(
        fontFamily: 'cairo',
        primaryColor: Color.fromRGBO(070, 20, 21, 1),
        accentColor: Color.fromRGBO(070, 20, 21, 1),
      ),
      home: SplashScreen(),
    );
  }
}
