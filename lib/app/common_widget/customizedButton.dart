import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final String buttonname;
  final double width;
  final double height;
  final Color color;
  final VoidCallback voidCallback;
  final FontWeight fontWeight;
  final double fontSize;
  const CustomizedButton(
      {super.key,
      required this.buttonname,
      required this.width,
      required this.color,
      required this.fontSize,
      required this.fontWeight,
      required this.height,
      required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), color: color),
      child: MaterialButton(
        onPressed: () {
          voidCallback();
        },
        child: Container(
          margin: const EdgeInsets.only(left: 7),
          child: Text(
            buttonname,
            style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
                fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}
