import 'package:flutter/material.dart';

class CustomScrun extends StatefulWidget {
  final String img;
  final String img2;
  // final Color color;
  // final String label;
  // final IconData icon;
  // final IconData icon;

  const CustomScrun({
    Key key,
    this.img,
    this.img2,
    // this.titel,
    // this.color,
    // this.label,
  }) : super(key: key);
  @override
  _CustomScrunState createState() => _CustomScrunState();
}

class _CustomScrunState extends State<CustomScrun>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Stack(
              children: <Widget>[
                //stack overlaps widgets
                // Opacity(
                //   //semi red clippath with more height and with 0.5 opacity
                //   opacity: 0.5,
                //   child: ClipPath(
                //     clipper: WaveClipper(), //set our custom wave clipper
                //     child: Container(
                //       color: Colors.deepOrangeAccent,
                //       height: 200,
                //     ),
                //   ),
                // ),

                ClipPath(
                    //upper clippath with less height
                    clipper: WaveClipper(),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.5,
                      child: Image.asset(
                        // 'assets/images/icons/appIcon.png',
                        widget.img,
                        width: 1,
                        height: 1,
                        alignment: Alignment.centerLeft,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF2e112d),
                        image: DecorationImage(
                          image: AssetImage(
                            // 'assets/images/icons/Artboard11.png'
                            widget.img2,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                    //set our custom wave clipper.
                    // child: Container(
                    //   padding: EdgeInsets.only(bottom: 50),
                    //   color: Colors.red,
                    //   height: 180,
                    //   alignment: Alignment.center,
                    //   child: Text(
                    //     "Wave clipper",
                    //     style: TextStyle(
                    //       fontSize: 18,
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width / 1.4, size.height - 75);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
