import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:reclaimd/widgets/buttonWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignInEmail extends StatelessWidget {
  const SignInEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 12),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/icons/left.png",
                    height: 2.h,
                  )),
              Align(
                child: Image.asset(
                  "assets/logo/reclaim.png",
                  fit: BoxFit.fill,
                  width: 30.w,
                  height: 13.h,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              textWidget("Welcome Back!",
                  fontSize: 21.sp, fontWeight: FontWeight.w700),
              textWidget("Sign in to continue",
                  color: Color(0xff808B95),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700),
              SizedBox(
                height: 2.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: textWidget("Email ",
                    color: Color(0xff03314B),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                cursorColor: Color(0xff4B5768),
                style: GoogleFonts.quicksand(
                  color: Color(0xff4B5768),
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFAFAFA),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 17.0, horizontal: 12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffF5F5F5),
                      width: .5.w,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffF5F5F5),
                      width: .5.w,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 10),
                    child: Image.asset(
                      'assets/icons/mail.png',
                      height: .4.h,
                      width: 2.w,
                    ),
                  ),
                  hintText: 'example@email.com',
                  hintStyle: GoogleFonts.quicksand(
                    color: Color(0xff808B95),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: textWidget("Password ",
                    color: Color(0xff03314B),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 1.2.h,
              ),
              TextFormField(
                obscureText: true,
                cursorColor: Color(0xff4B5768),
                style: GoogleFonts.quicksand(
                  color: Color(0xff4B5768),
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFAFAFA),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 17.0, horizontal: 18),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffF5F5F5),
                      width: .5.w,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffF5F5F5),
                      width: .5.w,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/lock.png',
                      height: 3.h,
                      width: 10.w,
                    ),
                  ),
                  hintText: 'Enter your password',
                  hintStyle: GoogleFonts.quicksand(
                    color: Color(0xff808B95),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 1.2.h,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: textWidget("Forgot password?",
                    color: Color(0xff03314B),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              buttonConatiner("Email",
                  color: Color(0xff6CACA0), color1: Color(0xffFFFFFF)),
              SizedBox(
                height: 2.5.h,
              ),
              textWidget("Or Sign In With",
                  color: Color(0xff03314B),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
              SizedBox(
                height: 1.5.h,
              ),
              buttonConatiner("Google",
                  color: Color(0xfffff2f2),
                  color1: Color(0xffE96058),
                  borderColor: Color(0xffffd3d2)),
              SizedBox(
                height: 1.5.h,
              ),
              buttonConatiner("Apple",
                  color: Color(0xffe7ecef),
                  color1: Color(0xff00324d),
                  borderColor: Color(0xff88a3af)),
              SizedBox(
                height: 4.h,
              ),
              Text.rich(
                TextSpan(
                  text: "Don’t have an account?",
                  style: GoogleFonts.quicksand(
                    fontSize: 17.sp,
                    color: Color(0xff03314B),
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: ' Sign Up',
                      style: GoogleFonts.quicksand(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff6CACA0),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
