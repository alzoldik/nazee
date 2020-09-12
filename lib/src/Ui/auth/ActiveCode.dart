import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemActieCode.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemButton.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemScrun.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemTextField.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

import 'ConfirmPassword.dart';

class ActiveCode extends StatelessWidget {
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
              ' الرجاء ادخال كود التفعيل المرسل علي جوالك',
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
                Container(
                  margin: EdgeInsets.only(
                    top: 40,
                  ),
                  alignment: Alignment.centerRight,
                  child: Text(
                    'كود التفعيل',
                    style: TextStyle(
                        color: Color(0xFF2e112d),
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                        fontFamily: 'cairo'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 5,
                  ),
                  child: PinEntryTextField(
                    onSubmit: (String pin) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Pin"),
                              content: Text('Pin entered is $pin'),
                            );
                          }); //end showDialog()
                    }, // end onSubmit
                  ),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmPassword()));
                  },
                  color: Color(0xFF2e112d),
                  Border: Color(0xFF2e112d),
                  color2: Colors.white,
                  titel: 'ارسال',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'ارسال مره اخري',
                        style: TextStyle(
                            color: Color(0xFFf4b757),
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                            fontFamily: 'cairo'),
                      ),
                    ),
                    Text(
                      'لم يصل كود التفعيل ؟',
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
