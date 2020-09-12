import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nazeef/src/Ui/auth/singInForm.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemButton.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemScrun.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemTextField.dart';

import 'ResetPassword.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: (CustomScrun(
              img: 'assets/images/icons/appIcon.png',
              img2: 'assets/images/icons/Artboard11.png',
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 0, left: 30, right: 30),
            alignment: Alignment.centerRight,
            child: Text(
              'مرحبا بك في تطبيق نظيف',
              style: TextStyle(
                color: Color(0xFFf4b757),
                fontWeight: FontWeight.w900,
                fontSize: 15,
                // fontFamily: 'cairo',
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                  alignment: Alignment.centerRight,
                  child: Text(
                    'انشاء حساب',
                    style: TextStyle(
                      color: Color(0xFF2e112d),
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      // fontFamily: 'cairo',
                    ),
                  ),
                ),
                CustomTextField(
                  color: Color(0xFF2e112d),
                  titel: 'اسم المستحدم',
                  label: 'اسم المستحدم',
                ),
                CustomTextField(
                  color: Color(0xFF2e112d),
                  titel: '111111111111111',
                  label: 'رقم الجوال',
                ),
                CustomTextField(
                  color: Color(0xFF2e112d),
                  titel: 'اسم الدوله',
                  label: 'الدوله',
                ),
                CustomTextField(
                  color: Color(0xFF2e112d),
                  titel: 'المدينه',
                  label: 'المدينه',
                ),
                CustomTextField(
                  color: Color(0xFF2e112d),
                  titel: '***********************',
                  label: 'كلمة المرور',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 35,
            ),
            child: Column(
              children: [
                CustomButton(
                  onTab: () {},
                  color: Color(0xFF2e112d),
                  Border: Color(0xFF2e112d),
                  color2: Colors.white,
                  titel: 'انشاء',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyWaveClipper()));
                      },
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                            color: Color(0xFFf4b757),
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                            fontFamily: 'cairo'),
                      ),
                    ),
                    Text(
                      'ليس لديك حساب؟',
                      style: TextStyle(
                          color: Color(0xFF2e112d),
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                          fontFamily: 'cairo'),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
