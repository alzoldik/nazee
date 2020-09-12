import 'package:matcher/matcher.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String titel;
  final Color color;
  final Color color2;
  final Color Border;
  final Function onTab;

  const CustomButton({
    Key key,
    this.titel,
    this.color,
    this.onTab,
    this.color2,
    this.Border,
  }) : super(key: key);
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 18, left: 20, right: 20),
      padding: EdgeInsets.only(
        top: 0,
        bottom: 0,
      ),
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: widget.color,
        border: Border.all(
          color: widget.Border,
          width: 2,
        ),
        // boxShadow: [
        //   BoxShadow(
        //       color: Colors.black54,
        //       offset: Offset(0.0, 2.0),
        //       blurRadius: 2.0),
        // ]
      ),
      child: FlatButton(
        onPressed: widget.onTab,
        child: Text(
          widget.titel,
          style: TextStyle(
              color: widget.color2,
              fontWeight: FontWeight.w900,
              fontSize: 18,
              fontFamily: 'cairo'),
        ),
      ),
    );
  }
}
