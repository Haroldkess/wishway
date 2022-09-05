import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MaxText extends StatelessWidget {
  String text;
  int? maxLines;
  TextOverflow? overflow;
  double? scaleFactor;
  FontWeight? fontWeight;
  Color? color;
  TextDecoration? decoration;
  TextAlign? align;
  String? fontFamily;
  double? space;

  MaxText(
      {Key? key,
      required this.text,
      this.space,
      this.maxLines,
      this.overflow,
      this.scaleFactor,
      this.fontWeight,
      this.decoration,
      this.align,
      this.fontFamily,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 3,
      textScaleFactor: scaleFactor,
      overflow: overflow,
      textAlign: align,
      style: GoogleFonts.dmSerifDisplay(
          textStyle: TextStyle(
        fontWeight: fontWeight,
        color: color,
        letterSpacing: space,
        decoration: decoration,
        decorationStyle: TextDecorationStyle.solid,
      )),
    );
  }
}

class MinText extends StatelessWidget {
  String text;
  int? maxLines;
  TextOverflow? overflow;
  double? scaleFactor;
  FontWeight? fontWeight;
  Color? color;
  TextAlign? align;
  double? space;
  String? fontFamily;
  MinText(
      {Key? key,
      required this.text,
      this.maxLines,
      this.space,
      this.overflow,
      this.scaleFactor,
      this.fontWeight,
      this.align,
      this.fontFamily,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textScaleFactor: scaleFactor,
      overflow: overflow,
      textAlign: align,
      style: GoogleFonts.barlow(
          textStyle: TextStyle(
        fontWeight: fontWeight,
        wordSpacing: space,
        color: color,
      )),
    );
  }
}
