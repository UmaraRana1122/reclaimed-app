import 'package:flutter/cupertino.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget eachPage(
  final String image,
) {
  return Image.asset(
    image,
    fit: BoxFit.fill,
    width: 92.w,
  );
}
