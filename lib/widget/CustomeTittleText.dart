import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  CustomeTittleText extends StatelessWidget {
  String text;
  double? textSize;
  Color? textColor;
  CustomeTittleText({Key? key, required this.text, this.textSize,this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontFamily: "Alexandria",
      fontSize:textSize ?? 20.0,fontWeight: FontWeight.w700,color:textColor ?? Colors.black),
    );
  }
}
