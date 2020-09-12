import 'package:flutter/material.dart';
import 'package:nazeef/src/Ui/auth/singInForm.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemButton.dart';

import 'ServiceSingForm.dart';

class UserType extends StatefulWidget {
  @override
  _UserTypeState createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/icons/Artboard555.png'),
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/icons/membershio-logo.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    'الرجاء اختيار نوع العضويه',
                    style: TextStyle(
                      color: Color(0xFF2e112d),
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      // fontFamily: 'cairo',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 120,
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomButton(
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyWaveClipper()));
                        },
                        color: Color(0xFF2e112d),
                        Border: Color(0xFF2e112d),
                        color2: Colors.white,
                        titel: 'عميل',
                      ),
                      CustomButton(
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ServiceSingForm()));
                        },
                        color: Colors.white,
                        color2: Color(0xFF2e112d),
                        Border: Color(0xFF2e112d),
                        titel: 'مقدم خدمة',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
