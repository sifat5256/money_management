import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var pageIndex = 0.obs;
  final PageController pageController = PageController();

  void nextPage() {
    if (pageIndex < 2) {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.easeIn);
    } else {
      // Navigate to the next screen (e.g., login)
      Get.offNamed('/login');
    }
  }

  void updatePageIndex(int index) {
    pageIndex.value = index;
  }
}
