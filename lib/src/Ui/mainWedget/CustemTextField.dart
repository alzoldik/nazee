import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String titel;
  final Color color;
  final String label;
  // final IconData icon;
  // final IconData icon;

  const CustomTextField({
    Key key,
    this.titel,
    this.color,
    this.label,
  }) : super(key: key);
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, right: 20, left: 20),
      child: Column(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: TextFormField(
              autofocus: false,
              // textAlign: TextAlign.right,
              autocorrect: true,
              style: TextStyle(
                  fontSize: 15,
                  // color: widget.color,
                  fontWeight: FontWeight.w700),
              decoration: InputDecoration(
                labelText: widget.label,
                labelStyle: TextStyle(
                  color: Color(0xFF2e112d),
                  fontSize: 14,
                  fontFamily: 'cairo',
                  fontWeight: FontWeight.w600,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: widget.titel,

                // suffixIcon: widget.icon == null
                //     ? null
                //     : Padding(
                //         padding: const EdgeInsets.only(top: 12),
                //         child: Icon(
                //           widget.icon,
                //           size: 22,
                //         ),
                //       ),
                contentPadding: const EdgeInsets.only(
                    right: 14.0, left: 14.0, bottom: 5, top: 5),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
