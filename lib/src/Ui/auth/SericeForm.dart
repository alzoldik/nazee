import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nazeef/src/Ui/auth/singInForm.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemButton.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemEddImg.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemScrun.dart';
import 'package:nazeef/src/Ui/mainWedget/CustemTextField.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'ResetPassword.dart';

class SericeForm extends StatefulWidget {
  SericeForm() : super();

  final String title = "Flutter Pick Image demo";

  @override
  _SericeFormState createState() => _SericeFormState();
}

class _SericeFormState extends State<SericeForm> {
  Future<File> imageFile;

  pickImageFromGallery(ImageSource source) {
    setState(() {
      imageFile = ImagePicker.pickImage(source: source);
    });
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: 50,
            height: 50,
          );
        } else {
          return const Text(
            '',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

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
                  titel: 'القسم',
                  label: 'القسم',
                ),
                CustomTextField(
                  color: Color(0xFF2e112d),
                  titel: 'نوع الخدمه',
                  label: 'نوع الخدمه',
                ),
                CustomTextField(
                  color: Color(0xFF2e112d),
                  titel: 'وصف الخدمه',
                  label: 'وصف الخدمه',
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                      alignment: Alignment.centerRight,
                      child: Text(
                        'معرض الاعمال',
                        style: TextStyle(
                          color: Color(0xFF2e112d),
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          // fontFamily: 'cairo',
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          showImage(),
                          RaisedButton(
                            padding: EdgeInsets.all(20),
                            color: Colors.white,
                            child: Container(
                              child: Icon(Icons.camera_enhance_sharp),
                            ),
                            onPressed: () {
                              pickImageFromGallery(ImageSource.gallery);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomTextField(
                  color: Color(0xFF2e112d),
                  titel: '***********************',
                  label: 'كلمة المرور',
                ),
                CustomTextField(
                  color: Color(0xFF2e112d),
                  titel: '***********************',
                  label: 'تاكيد كلمة المرور',
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
