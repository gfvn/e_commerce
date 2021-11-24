import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  final String text;
  final double fontSize;
  Color? color = Colors.black;
  Alignment? alignment = Alignment.topLeft;
  String? fontFamily;

  CustomText({Key? key,  required this.text, required this.fontSize, this.alignment, this.color, this.fontFamily}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
