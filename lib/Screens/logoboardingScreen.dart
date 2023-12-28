import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LogoBoardingScreen extends StatelessWidget {
  const LogoBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Align(
              child: Image.asset(
                "assets/logo/reclaim.png",
                fit: BoxFit.fill,
                width: 56.w,
                height: 28.h,
              ),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
