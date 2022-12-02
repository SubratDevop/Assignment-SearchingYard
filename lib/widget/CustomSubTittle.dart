import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  CustomSubTittle extends StatelessWidget {
  String text;
  double? textSize;
  Color? textColor;

  CustomSubTittle({Key? key, required this.text, this.textSize,this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: GoogleFonts.lato(fontSize:textSize ?? 17.0,fontWeight: FontWeight.normal,color:textColor ?? Colors.black),
    );
  }
}
