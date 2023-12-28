// import 'package:custom_radio_group_list/custom_radio_group_list.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:reclaimd/Controller/Auth_Controller.dart';
// import 'package:reclaimd/Widgets/ButtonC.dart';
// import 'package:reclaimd/Widgets/lisenceWidget.dart';
// import 'package:reclaimd/Widgets/textWidget.dart';
// import 'package:reclaimd/Widgets/textWidget2.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';

// class RequestNewCard extends StatefulWidget {
//   const RequestNewCard({super.key});

//   @override
//   State<RequestNewCard> createState() => _RequestNewCardState();
// }

// class _RequestNewCardState extends State<RequestNewCard> {
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<AuthController>(
//         init: AuthController(),
//         builder: (AuthController _) => GestureDetector(
//               onTap: () {
//                 FocusManager.instance.primaryFocus!.unfocus();
//               },
//               child: Scaffold(
//                 resizeToAvoidBottomInset: false,
//                 body: SafeArea(
//                     bottom: false,
//                     child: Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 5.w, vertical: 12),
//                       child: SingleChildScrollView(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Image.asset(
//                                   "assets/icons/left.png",
//                                   height: 2.h,
//                                 ),
//                                 SizedBox(
//                                   width: 17.w,
//                                 ),
//                                 textWidget("Request New Card",
//                                     color: Color(0xff03314B),
//                                     fontSize: 19.sp,
//                                     fontWeight: FontWeight.w700),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 3.h,
//                             ),
//                             // DefaultTabController(
//                             //     length: 3,
//                             //     child: Row(
//                             //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             //       children: [
//                             //         tabsWidget(
//                             //             "assets/icons/fill.png", "Fill \nForms"),
//                             //         tabsWidget("assets/icons/infor.png",
//                             //             "Read Terms & \nServices"),
//                             //         tabsWidget("assets/icons/book.png",
//                             //             "Book \nConsultation"),
//                             //       ],
//                             //     )),
//                             textWidget("Input Forms Below",
//                                 color: Color(0xff03314B),
//                                 fontSize: 20.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 2.h,
//                             ),
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: textWidget("Patien’s Name* ",
//                                   color: Color(0xff03314B),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             TextFormField(
//                               cursorColor: Color(0xff4B5768),
//                               style: GoogleFonts.quicksand(
//                                 color: Color(0xff4B5768),
//                               ),
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xfffafafa),
//                                 contentPadding: EdgeInsets.symmetric(
//                                     vertical: 22.0, horizontal: 20),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .6.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .5.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 hintText: 'Patien’s Name',
//                                 hintStyle: GoogleFonts.quicksand(
//                                   color: Color(0xff808B95),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: textWidget("Email Address ",
//                                   color: Color(0xff03314B),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             TextFormField(
//                               cursorColor: Color(0xff4B5768),
//                               style: GoogleFonts.quicksand(
//                                 color: Color(0xff4B5768),
//                               ),
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xfffafafa),
//                                 contentPadding: EdgeInsets.symmetric(
//                                     vertical: 22.0, horizontal: 20),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .6.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .5.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 hintText: 'Patien’s Name',
//                                 hintStyle: GoogleFonts.quicksand(
//                                   color: Color(0xff808B95),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: textWidget("Gender* ",
//                                   color: Color(0xff03314B),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             DropdownButtonFormField2<String>(
//                               isExpanded: true,
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xfffafafa),
//                                 contentPadding: EdgeInsets.symmetric(
//                                     vertical: 22.0, horizontal: 20),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .6.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .5.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 hintText: 'Jhon Doe',
//                                 hintStyle: GoogleFonts.quicksand(
//                                   color: Color(0xff808B95),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               hint: Text(
//                                 'Male',
//                                 style: GoogleFonts.quicksand(
//                                   color: Color(0xff808B95),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               items: _.genderItems
//                                   .map((item) => DropdownMenuItem<String>(
//                                         value: item,
//                                         child: Text(
//                                           item,
//                                           style: GoogleFonts.quicksand(
//                                             color: Color(0xff808B95),
//                                             fontSize: 16.sp,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ))
//                                   .toList(),
//                               onChanged: (value) {},
//                               onSaved: (value) {
//                                 _.selectedValue = value.toString();
//                               },
//                               buttonStyleData: ButtonStyleData(
//                                 padding: EdgeInsets.only(right: 2),
//                               ),
//                               iconStyleData: IconStyleData(
//                                 icon: Image.asset(
//                                   "assets/icons/drop.png",
//                                   width: 3.w,
//                                   height: 2.h,
//                                 ),
//                                 iconSize: 24,
//                               ),
//                               dropdownStyleData: DropdownStyleData(
//                                 maxHeight: 15.h,
//                                 width: 85.w,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                               ),
//                               menuItemStyleData: const MenuItemStyleData(
//                                 padding: EdgeInsets.symmetric(horizontal: 12),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: textWidget("Preferred Pronouns* ",
//                                   color: Color(0xff03314B),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             DropdownButtonFormField2<String>(
//                               isExpanded: true,
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xfffafafa),
//                                 contentPadding: EdgeInsets.symmetric(
//                                     vertical: 22.0, horizontal: 20),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .6.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .5.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 hintText: 'Jhon Doe',
//                                 hintStyle: GoogleFonts.quicksand(
//                                   color: Color(0xff808B95),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               hint: Text(
//                                 'He/Him',
//                                 style: GoogleFonts.quicksand(
//                                   color: Color(0xff808B95),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               items: _.nouns
//                                   .map((item) => DropdownMenuItem<String>(
//                                         value: item,
//                                         child: Text(
//                                           item,
//                                           style: GoogleFonts.quicksand(
//                                             color: Color(0xff808B95),
//                                             fontSize: 16.sp,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ))
//                                   .toList(),
//                               onChanged: (value) {},
//                               onSaved: (value) {
//                                 _.selectedValue = value.toString();
//                               },
//                               buttonStyleData: ButtonStyleData(
//                                 padding: EdgeInsets.only(right: 2),
//                               ),
//                               iconStyleData: IconStyleData(
//                                 icon: Image.asset(
//                                   "assets/icons/drop.png",
//                                   width: 3.w,
//                                   height: 2.h,
//                                 ),
//                                 iconSize: 24,
//                               ),
//                               dropdownStyleData: DropdownStyleData(
//                                 maxHeight: 15.h,
//                                 width: 85.w,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                               ),
//                               menuItemStyleData: const MenuItemStyleData(
//                                 padding: EdgeInsets.symmetric(horizontal: 12),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: textWidget(
//                                   "ID Card Number / Driving License Number* ",
//                                   color: Color(0xff03314B),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             TextFormField(
//                               cursorColor: Color(0xff4B5768),
//                               style: GoogleFonts.quicksand(
//                                 color: Color(0xff4B5768),
//                               ),
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xfffafafa),
//                                 contentPadding: EdgeInsets.symmetric(
//                                     vertical: 22.0, horizontal: 20),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .6.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .5.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 hintText:
//                                     'ID Card Number / Driving License Number*',
//                                 hintStyle: GoogleFonts.quicksand(
//                                   color: Color(0xff808B95),
//                                   fontSize: 15.sp,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: textWidget(
//                                   "Upload ID Card/ Driving License* ",
//                                   color: Color(0xff03314B),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             licenseWidget(),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: textWidget("Phone Number* ",
//                                   color: Color(0xff03314B),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             TextFormField(
//                               cursorColor: Color(0xff4B5768),
//                               style: GoogleFonts.quicksand(
//                                 color: Color(0xff4B5768),
//                               ),
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xfffafafa),
//                                 contentPadding: EdgeInsets.symmetric(
//                                     vertical: 22.0, horizontal: 20),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .6.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .5.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 hintText: '+1 ',
//                                 hintStyle: GoogleFonts.quicksand(
//                                   color: Color(0xff808B95),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: textWidget("State* ",
//                                   color: Color(0xff03314B),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             DropdownButtonFormField2<String>(
//                               isExpanded: true,
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xfffafafa),
//                                 contentPadding: EdgeInsets.symmetric(
//                                     vertical: 22.0, horizontal: 20),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .6.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .5.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                               ),
//                               hint: Text(
//                                 'State',
//                                 style: GoogleFonts.quicksand(
//                                   color: Color(0xff808B95),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               items: _.state
//                                   .map((item) => DropdownMenuItem<String>(
//                                         value: item,
//                                         child: Text(
//                                           item,
//                                           style: GoogleFonts.quicksand(
//                                             color: Color(0xff808B95),
//                                             fontSize: 16.sp,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ))
//                                   .toList(),
//                               onChanged: (value) {},
//                               onSaved: (value) {
//                                 _.selectedValue = value.toString();
//                               },
//                               buttonStyleData: ButtonStyleData(
//                                 padding: EdgeInsets.only(right: 2),
//                               ),
//                               iconStyleData: IconStyleData(
//                                 icon: Image.asset(
//                                   "assets/icons/drop.png",
//                                   width: 3.w,
//                                   height: 2.h,
//                                 ),
//                                 iconSize: 24,
//                               ),
//                               dropdownStyleData: DropdownStyleData(
//                                 maxHeight: 15.h,
//                                 width: 85.w,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                               ),
//                               menuItemStyleData: const MenuItemStyleData(
//                                 padding: EdgeInsets.symmetric(horizontal: 12),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: textWidget("Time Zone*",
//                                   color: Color(0xff03314B),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),

//                             DropdownButtonFormField2<String>(
//                               isExpanded: true,
//                               decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xfffafafa),
//                                 contentPadding: EdgeInsets.symmetric(
//                                     vertical: 22.0, horizontal: 20),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .6.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xffF5F5F5),
//                                     width: .5.w,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(30)),
//                                 ),
//                               ),
//                               hint: Text(
//                                 'EST',
//                                 style: GoogleFonts.quicksand(
//                                   color: Color(0xff808B95),
//                                   fontSize: 16.sp,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               items: _.timezone
//                                   .map((item) => DropdownMenuItem<String>(
//                                         value: item,
//                                         child: Text(
//                                           item,
//                                           style: GoogleFonts.quicksand(
//                                             color: Color(0xff808B95),
//                                             fontSize: 16.sp,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ))
//                                   .toList(),
//                               onChanged: (value) {},
//                               onSaved: (value) {
//                                 _.selectedValue = value.toString();
//                               },
//                               buttonStyleData: ButtonStyleData(
//                                 padding: EdgeInsets.only(right: 2),
//                               ),
//                               iconStyleData: IconStyleData(
//                                 icon: Image.asset(
//                                   "assets/icons/drop.png",
//                                   width: 3.w,
//                                   height: 2.h,
//                                 ),
//                                 iconSize: 24,
//                               ),
//                               dropdownStyleData: DropdownStyleData(
//                                 maxHeight: 15.h,
//                                 width: 85.w,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                               ),
//                               menuItemStyleData: const MenuItemStyleData(
//                                 padding: EdgeInsets.symmetric(horizontal: 12),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             textWidget2(
//                                 "What is your experience with Cannabis?*",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),

//                             RadioGroup(
//                               activeColor: Color(0xff6CACA0),
//                               items: _.rowTexts,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _.selectedRow = value as String;
//                                 });
//                               },
//                               selectedItem: _.selectedRow,
//                               disabled: false,
//                               shrinkWrap: true,
//                               labelBuilder: (ctx, index) {
//                                 return Text(
//                                   _.rowTexts[index],
//                                   style: GoogleFonts.quicksand(
//                                       color: Color(0xff03314B),
//                                       fontSize: 15.sp,
//                                       fontWeight: FontWeight.w400),
//                                 );
//                               },
//                               fillColor: Color(0xfff4f4f4),
//                             ),
//                             SizedBox(
//                               height: 2.h,
//                             ),
//                             textWidget2("What is your interest in CBD?*",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),

//                             RadioGroup(
//                               activeColor: Color(0xff6CACA0),
//                               items: _.rowtexts,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _.selectedRow = value as String;
//                                 });
//                               },
//                               selectedItem: _.selectedRow,
//                               disabled: false,
//                               shrinkWrap: true,
//                               labelBuilder: (ctx, index) {
//                                 return Text(
//                                   _.rowtexts[index],
//                                   style: GoogleFonts.quicksand(
//                                       color: Color(0xff03314B),
//                                       fontSize: 15.sp,
//                                       fontWeight: FontWeight.w400),
//                                 );
//                               },
//                               fillColor: Color(0xfff4f4f4),
//                             ),
//                             SizedBox(
//                               height: 2.h,
//                             ),
//                             textWidget2(
//                                 "For woman, Are you pregnant or could pregnant?*",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             TextFormField(
//                               maxLines: 13,
//                               cursorColor: Color(0xff4B5768),
//                               style: TextStyle(color: Color(0xff4B5768)),
//                               decoration: InputDecoration(
//                                   filled: true,
//                                   fillColor: Color(0xfffafafa),
//                                   contentPadding: EdgeInsets.symmetric(
//                                       vertical: 22.0, horizontal: 20),
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Color(0xffF5F5F5),
//                                       width: .6.w,
//                                     ),
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(30)),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Color(0xffF5F5F5),
//                                       width: .5.w,
//                                     ),
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(30)),
//                                   ),
//                                   hintText: 'Answer here...',
//                                   hintStyle: GoogleFonts.quicksand(
//                                       color: Color(0xff808B95),
//                                       fontSize: 16.sp,
//                                       fontWeight: FontWeight.w400)),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             textWidget2("Medical History*",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             RadioGroup(
//                               activeColor: Color(0xff6CACA0),
//                               items: _.rowtext,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _.selectedRow = value as String;
//                                 });
//                               },
//                               selectedItem: _.selectedRow,
//                               disabled: false,
//                               shrinkWrap: true,
//                               labelBuilder: (ctx, index) {
//                                 return Text(
//                                   _.rowtext[index],
//                                   style: GoogleFonts.quicksand(
//                                       color: Color(0xff03314B),
//                                       fontSize: 15.sp,
//                                       fontWeight: FontWeight.w400),
//                                 );
//                               },
//                               fillColor: Color(0xfff4f4f4),
//                             ),
//                             SizedBox(
//                               height: 2.h,
//                             ),
//                             textWidget2("Allergies",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             textWidget2("Surgeries",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             textWidget2(
//                                 "Summarize the medical condition \nfor which you seek medical marijuana:",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 2.h,
//                             ),
//                             textWidget2("Family History:",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             RadioGroup(
//                               activeColor: Color(0xff6CACA0),
//                               items: _.rowtext1,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _.selectedRow = value as String;
//                                 });
//                               },
//                               selectedItem: _.selectedRow,
//                               disabled: false,
//                               shrinkWrap: true,
//                               labelBuilder: (ctx, index) {
//                                 return Text(
//                                   _.rowtext1[index],
//                                   style: GoogleFonts.quicksand(
//                                       color: Color(0xff03314B),
//                                       fontSize: 15.sp,
//                                       fontWeight: FontWeight.w400),
//                                 );
//                               },
//                               fillColor: Color(0xfff4f4f4),
//                             ),
//                             SizedBox(
//                               height: .7.h,
//                             ),
//                             textWidget2("Subtance Use",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             RadioGroup(
//                               activeColor: Color(0xff6CACA0),
//                               items: _.rowtext2,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _.selectedRow = value as String;
//                                 });
//                               },
//                               selectedItem: _.selectedRow,
//                               disabled: false,
//                               shrinkWrap: true,
//                               labelBuilder: (ctx, index) {
//                                 return Text(
//                                   _.rowtext2[index],
//                                   style: GoogleFonts.quicksand(
//                                       color: Color(0xff03314B),
//                                       fontSize: 15.sp,
//                                       fontWeight: FontWeight.w400),
//                                 );
//                               },
//                               fillColor: Color(0xfff4f4f4),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             textWidget2("Use of alternative therapies",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             RadioGroup(
//                               activeColor: Color(0xff6CACA0),
//                               items: _.rowtext3,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _.selectedRow = value as String;
//                                 });
//                               },
//                               selectedItem: _.selectedRow,
//                               disabled: false,
//                               shrinkWrap: true,
//                               labelBuilder: (ctx, index) {
//                                 return Text(
//                                   _.rowtext3[index],
//                                   style: GoogleFonts.quicksand(
//                                       color: Color(0xff03314B),
//                                       fontSize: 15.sp,
//                                       fontWeight: FontWeight.w400),
//                                 );
//                               },
//                               fillColor: Color(0xfff4f4f4),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             textWidget2("How did you hear about Reclaim MD?",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             RadioGroup(
//                               activeColor: Color(0xff6CACA0),
//                               items: _.rowtext4,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _.selectedRow = value as String;
//                                 });
//                               },
//                               selectedItem: _.selectedRow,
//                               disabled: false,
//                               shrinkWrap: true,
//                               labelBuilder: (ctx, index) {
//                                 return Text(
//                                   _.rowtext4[index],
//                                   style: GoogleFonts.quicksand(
//                                       color: Color(0xff03314B),
//                                       fontSize: 15.sp,
//                                       fontWeight: FontWeight.w400),
//                                 );
//                               },
//                               fillColor: Color(0xfff4f4f4),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             textWidget2(
//                                 "Medical Records Are Not Required to Be Approved.",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             textWidget2(
//                                 "Please upload a 1-2 page summary of your medical records if you have them. If medical documentation is not accessible an assessment with the physician will be completed during your visit. ",
//                                 color: Color(0xff03314B),
//                                 fontSize: 15.sp,
//                                 fontWeight: FontWeight.w400),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             textWidget2("Upload Medical Records",
//                                 color: Color(0xff03314B),
//                                 fontSize: 15.sp,
//                                 fontWeight: FontWeight.w400),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             licenseWidget(),
//                             SizedBox(
//                               height: 2.h,
//                             ),
//                             textWidget2(
//                                 "Special Offers : Would you like to be contacted about specials, discounts, and information directly from dispensaries and other health-focusedbusinesses that serve your current area? e.. Exclusive productdeals, dispensary coupons, etc.",
//                                 color: Color(0xff03314B),
//                                 fontSize: 16.sp,
//                                 fontWeight: FontWeight.w700),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             RadioGroup(
//                               activeColor: Color(0xff6CACA0),
//                               items: _.rowtext5,
//                               onChanged: (value) {
//                                 setState(() {
//                                   _.selectedRow = value as String;
//                                 });
//                               },
//                               selectedItem: _.selectedRow,
//                               disabled: false,
//                               shrinkWrap: true,
//                               labelBuilder: (ctx, index) {
//                                 return Text(
//                                   _.rowtext5[index],
//                                   style: GoogleFonts.quicksand(
//                                       color: Color(0xff03314B),
//                                       fontSize: 15.sp,
//                                       fontWeight: FontWeight.w400),
//                                 );
//                               },
//                               fillColor: Color(0xfff4f4f4),
//                             ),
//                             SizedBox(
//                               height: 2.h,
//                             ),
//                             buttonWidget()
//                           ],
//                         ),
//                       ),
//                     )),
//               ),
//             ));
//   }
// }
