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
    style: GoogleFonts.lato(fontSize:textSize ?? 20.0,fontWeight: FontWeight.w800,color:textColor ?? Colors.black),
    );
  }
}
