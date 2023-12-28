import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reclaimd/Widgets/lisenceWidget.dart';
import 'package:reclaimd/Widgets/textWidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditProfileInfo extends StatefulWidget {
  const EditProfileInfo({super.key});

  @override
  State<EditProfileInfo> createState() => _EditProfileInfoState();
}

class _EditProfileInfoState extends State<EditProfileInfo> {
  final List<String> genderItems = [
    'Male',
    'Female',
  ];
  String? selectedValue;
  final List<String> country = [
    'United States America',
    'UAE',
    'Pakistan',
    'Palestine',
  ];
  final List<String> city = [
    'New York',
    'Islamabad',
    'London',
    'Paris',
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/icons/left.png",
                    height: 2.h,
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                textWidget("Profile Informations",
                    color: Color(0xff03314B),
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w700),
                SizedBox(
                  height: 3.h,
                ),
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 8.7.h,
                        backgroundColor: Colors.transparent,
                      ),
                      CircleAvatar(
                        radius: 8.h,
                        backgroundImage: AssetImage("assets/images/jane.png"),
                        backgroundColor: Colors.white,
                        //
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: CircleAvatar(
                            radius: 1.9.h,
                            backgroundColor: Color(0xffFFFFFF),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff6CACA0),
                              radius: 1.7.h,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                    fillColor: Color(0xfffafafa),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffF5F5F5),
                        width: .9.w,
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
                    hintText: 'Email',
                    hintStyle: GoogleFonts.quicksand(
                      color: Color(0xff808B95),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: textWidget("Full Name ",
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
                    fillColor: Color(0xfffafafa),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffF5F5F5),
                        width: .6.w,
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
                    hintText: 'Jhon Doe',
                    hintStyle: GoogleFonts.quicksand(
                      color: Color(0xff808B95),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: textWidget("Gender ",
                      color: Color(0xff03314B),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 1.h,
                ),
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfffafafa),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffF5F5F5),
                        width: .6.w,
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
                    hintText: 'Jhon Doe',
                    hintStyle: GoogleFonts.quicksand(
                      color: Color(0xff808B95),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  hint: Text(
                    'Female',
                    style: GoogleFonts.quicksand(
                      color: Color(0xff808B95),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  items: genderItems
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: GoogleFonts.quicksand(
                                color: Color(0xff808B95),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {},
                  onSaved: (value) {
                    selectedValue = value.toString();
                  },
                  buttonStyleData: ButtonStyleData(
                    padding: EdgeInsets.only(right: 2),
                  ),
                  iconStyleData: IconStyleData(
                    icon: Image.asset(
                      "assets/icons/drop.png",
                      width: 3.w,
                      height: 2.h,
                    ),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    maxHeight: 15.h,
                    width: 85.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: textWidget("Country ",
                      color: Color(0xff03314B),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 1.h,
                ),
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfffafafa),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffF5F5F5),
                        width: .6.w,
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
                  ),
                  hint: Text(
                    'United States America',
                    style: GoogleFonts.quicksand(
                      color: Color(0xff808B95),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  items: country
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: GoogleFonts.quicksand(
                                color: Color(0xff808B95),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {},
                  onSaved: (value) {
                    selectedValue = value.toString();
                  },
                  buttonStyleData: ButtonStyleData(
                    padding: EdgeInsets.only(right: 2),
                  ),
                  iconStyleData: IconStyleData(
                    icon: Image.asset(
                      "assets/icons/drop.png",
                      width: 3.w,
                      height: 2.h,
                    ),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    maxHeight: 15.h,
                    width: 85.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: textWidget("City ",
                      color: Color(0xff03314B),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 1.h,
                ),
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xfffafafa),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffF5F5F5),
                        width: .6.w,
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
                  ),
                  hint: Text(
                    'New York',
                    style: GoogleFonts.quicksand(
                      color: Color(0xff808B95),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  items: city
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: GoogleFonts.quicksand(
                                color: Color(0xff808B95),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {},
                  onSaved: (value) {
                    selectedValue = value.toString();
                  },
                  buttonStyleData: ButtonStyleData(
                    padding: EdgeInsets.only(right: 2),
                  ),
                  iconStyleData: IconStyleData(
                    icon: Image.asset(
                      "assets/icons/drop.png",
                      width: 3.w,
                      height: 2.h,
                    ),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    maxHeight: 15.h,
                    width: 85.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: textWidget("Address ",
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
                    fillColor: Color(0xfffafafa),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffF5F5F5),
                        width: .6.w,
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
                    hintText: 'Great street 01 ',
                    hintStyle: GoogleFonts.quicksand(
                      color: Color(0xff808B95),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: textWidget("Phone Number ",
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
                    fillColor: Color(0xfffafafa),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffF5F5F5),
                        width: .6.w,
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
                    hintText: '+1 ',
                    hintStyle: GoogleFonts.quicksand(
                      color: Color(0xff808B95),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: textWidget("Upload ID Card/ Driving License ",
                      color: Color(0xff03314B),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 1.h,
                ),
                licenseWidget(),
                SizedBox(
                  height: 3.h,
                ),
               
              ],
            ),
          ),
        )),
      ),
    );
  }
}
