import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget richTextWidget(
  String text,
  String text2,
  Color? color,
  Color? color1,
) {
  return Text.rich(TextSpan(
    text: text,
    style: GoogleFonts.quicksand(
      fontSize: 14.sp,
      color: color ?? Colors.black,
    ),
    children: <InlineSpan>[
      TextSpan(
        text: text2,
        style: GoogleFonts.quicksand(
          fontSize: 14.5.sp,
          fontWeight: FontWeight.w600,
          color: color1 ?? Colors.black,
        ),
      )
    ],
  ));
}
