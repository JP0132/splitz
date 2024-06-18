import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitz/pages/authentication/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginPage());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    Get.offAll(() => const LoginPage());
    // currentPageIndex.value = 2;
    // pageController.jumpToPage(2);
  }
}
