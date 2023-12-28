import 'package:flutter/material.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerifiedScreen extends StatelessWidget {
  const VerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Spacer(),
              Image.asset(
                "assets/logo/verified.png",
                height: 22.h,
              ),
              textWidget("Succesfully Verified!",
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff03314B)),
              textWidget("We will direct you to home page",
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff808B95)),
              Spacer(
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
