import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reclaimd/Controller/Auth2_Controller.dart';
import 'package:reclaimd/Widgets/richTextWidget.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:reclaimd/widgets/buttonWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUpEmail extends StatefulWidget {
  const SignUpEmail({super.key});

  @override
  State<SignUpEmail> createState() => _SignUpEmailState();
}

class _SignUpEmailState extends State<SignUpEmail> {
  bool _isChecked = false;
  bool _isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Auth2Controller>(
        init: Auth2Controller(),
        builder: (con) => GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus!.unfocus();
              },
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                body: SafeArea(
                  bottom: false,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 10),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset(
                              "assets/icons/left.png",
                              height: 2.h,
                            )),
                        textWidget("Create New a Account",
                            fontSize: 21.sp, fontWeight: FontWeight.w600),
                        textWidget("Create new account to start using app",
                            color: Color(0xff808B95),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500),
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
                          controller: con.email,
                          cursorColor: Color(0xff4B5768),
                          style: GoogleFonts.quicksand(
                            color: Color(0xff4B5768),
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFAFAFA),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 17.0, horizontal: 12),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffF5F5F5),
                                width: .5.w,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffF5F5F5),
                                width: .5.w,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
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
                          controller: con.password,
                          obscureText: true,
                          cursorColor: Color(0xff4B5768),
                          style: GoogleFonts.quicksand(
                            color: Color(0xff4B5768),
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFAFAFA),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 17.0, horizontal: 18),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffF5F5F5),
                                width: .5.w,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffF5F5F5),
                                width: .5.w,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
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
                          alignment: Alignment.topLeft,
                          child: textWidget("Confirm Password ",
                              color: Color(0xff03314B),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 1.2.h,
                        ),
                        TextFormField(
                          controller: con.cPassword,
                          obscureText: true,
                          cursorColor: Color(0xff4B5768),
                          style: GoogleFonts.quicksand(
                            color: Color(0xff4B5768),
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFAFAFA),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 17.0, horizontal: 18),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffF5F5F5),
                                width: .5.w,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffF5F5F5),
                                width: .5.w,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/icons/clock.png',
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
                        Row(
                          children: [
                            CustomCheckBox(
                              value: _isChecked,
                              shouldShowBorder: true,
                              borderColor: Color(0xff808B95),
                              uncheckedFillColor: Colors.white,
                              uncheckedIconColor: Colors.transparent,
                              checkedIconColor: Color(0xff03314B),
                              checkedFillColor: Color(0xff808B95),
                              borderRadius: 8,
                              borderWidth: .5,
                              checkBoxSize: 22,
                              onChanged: (val) {
                                setState(() {
                                  _isChecked = val;
                                });
                              },
                            ),
                            richTextWidget(
                              "By sign up I agree with ",
                              " Terms Conditions",
                              Color(0xff03314B),
                              Color(0xff03314B),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomCheckBox(
                              value: _isChecked2,
                              shouldShowBorder: true,
                              borderColor: Color(0xff808B95),
                              uncheckedFillColor: Colors.white,
                              uncheckedIconColor: Colors.transparent,
                              checkedIconColor: Color(0xff03314B),
                              checkedFillColor: Color(0xff808B95),
                              borderRadius: 8,
                              borderWidth: .5,
                              checkBoxSize: 22,
                              onChanged: (val) {
                                setState(() {
                                  _isChecked2 = val;
                                });
                              },
                            ),
                            richTextWidget(
                              "By sign up I agree with ",
                              " Privacy Policy",
                              Color(0xff03314B),
                              Color(0xff03314B),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                      InkWell(
                          onTap: () async {
                            try {
                              await con.registerUser();
                            } catch (e) {
                              EasyLoading.showError(e.toString());
                            }
                          },
                          child: buttonConatiner("Create New Account",
                              color: Color(0xff6CACA0),
                              color1: Color(0xffFFFFFF)),
                        ),


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
                        InkWell(
                          onTap: () {
                            con.gmailLogin();
                          },
                          child: buttonConatiner("Google",
                              color: Color(0xfffff2f2),
                              color1: Color(0xffE96058),
                              borderColor: Color(0xffffd3d2)),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        InkWell(
                          onTap: () {
                            con.loginUser();
                          },
                          child: buttonConatiner("Apple",
                              color: Color(0xffe7ecef),
                              color1: Color(0xff00324d),
                              borderColor: Color(0xff88a3af)),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        richTextWidget(
                          "Don’t have an account?",
                          " Sign Up",
                          Color(0xff03314B),
                          Color(0xff6CACA0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
