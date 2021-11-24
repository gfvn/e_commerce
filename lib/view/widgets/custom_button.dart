import 'package:e_commerce/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final double height;
  final String text;
  final onPressed;

  const CustomButton({Key? key, required this.height, required this.text,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      child:ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
            backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(fontSize: 23.0,fontFamily: 'DisplayRegular',),
          )),
    );
  }
}
