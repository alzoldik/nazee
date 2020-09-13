import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemButton.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemScrun.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemTextField.dart';

import 'ActiveCode.dart';

class ResetPassword extends StatelessWidget {
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
            margin: EdgeInsets.only(
              top: 0,
            ),
            alignment: Alignment.center,
            child: Text(
              'الرجاء ادخال رقم جوالك لارسال كود التفعيل',
              style: TextStyle(
                color: Color(0xFFf4b757),
                fontWeight: FontWeight.w900,
                fontSize: 15,
                // fontFamily: 'cairo',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0, left: 20, right: 20),
            child: Column(
              children: [
                CustomTextField(
                  color: Color(0xFF2e112d),
                  titel: '457674564658546546',
                  label: 'اسم المستحدم',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 95,
            ),
            child: Column(
              children: [
                CustomButton(
                  onTab: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ActiveCode()));
                  },
                  color: Color(0xFF2e112d),
                  border: Color(0xFF2e112d),
                  color2: Colors.white,
                  titel: 'ارسال',
                ),
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
