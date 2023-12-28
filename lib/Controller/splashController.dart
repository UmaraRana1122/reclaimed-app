import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  PageController controller = PageController();
  final images = [
    'assets/images/doctor.png',
    'assets/images/drugStore.png',
    'assets/images/perscription.png',
  ];
  int currentindex = 0;

  int numberOfPages = 3;
  int currentPage = 0;
}
