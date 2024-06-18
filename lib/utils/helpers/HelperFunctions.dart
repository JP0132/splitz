import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Helperfunctions {
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getBottomNavBarHeight() {
    return kBottomNavigationBarHeight;
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static String getDateFormat(DateTime date) {
    // Extract the date and reformat it
    DateTime currentDate = DateTime(
      date.year,
      date.month,
      date.day,
    );
    return DateFormat('yyyy-MM-dd').format(currentDate);
  }
}
