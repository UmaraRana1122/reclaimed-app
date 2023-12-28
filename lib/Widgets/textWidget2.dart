import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget textWidget2(String text,
    {fontSize, FontWeight? fontWeight, Color? color}) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: GoogleFonts.quicksand(
      color: color ?? Colors.black,
      fontSize: fontSize ?? 20.sp,
      fontWeight: fontWeight ?? FontWeight.w500,
    ),
  );
}
