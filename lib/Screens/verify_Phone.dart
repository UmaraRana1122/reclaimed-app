import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerifyPhoneNumber extends StatelessWidget {
  const VerifyPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 10),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      "assets/icons/left.png",
                      height: 2.h,
                    )),
                SizedBox(
                  height: 3.h,
                ),
                textWidget("Verify Phone Number",
                    color: Color(0xff03314B),
                    fontSize: 21.sp,
                    fontWeight: FontWeight.w700),
                SizedBox(
                  height: 1.h,
                ),
                textWidget("Input your phone number below:",
                    color: Color(0xff808B95),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 9.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffD0D5DD),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: CountryCodePicker(
                        onChanged: (value) {
                          print(value);
                        },
                        initialSelection: 'US',
                        favorite: ['+1', 'US'],
                        showDropDownButton: true,
                        showFlagDialog: false,
                        showFlagMain: false,
                        showFlag: false,
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                        textStyle: GoogleFonts.quicksand(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff03314B),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: TextFormField(
                          style: TextStyle(color: Color(0xff4B5768)),
                          decoration: InputDecoration(
                            counterText: '',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 29.0, horizontal: 18),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffD0D5DD),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(22)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff3E9892), width: .3.w),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(22)),
                            ),
                            hintText: '000 111 222 333',
                            hintStyle: GoogleFonts.quicksand(
                              color: Color(0xff928FA6),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onChanged: (phone) {
                            print(phone);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 7.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: Color(0xff6CACA0),
                      borderRadius: BorderRadius.circular(37)),
                  child: Align(
                    child: textWidget("Verify Now",
                        color: Color(0xffFFFFFF),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
