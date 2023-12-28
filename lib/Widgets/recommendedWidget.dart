import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget recommendedWidget() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 30.h,
      width: 50.w,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          border: Border.all(color: Color(0xffF1F1F1), width: 1.3),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.6.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/product.png",
                height: 8.h,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            textWidget("Product Name",
                color: Color(0xff03314B),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700),
            textWidget("\$25",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff03314B)),
            textWidget("Per item",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff03314B)),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 5.h,
              width: 35.w,
              decoration: BoxDecoration(
                  color: Color(0xff6CACA0),
                  borderRadius: BorderRadius.circular(25)),
              child: Align(
                child: textWidget("Buy",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF)),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
