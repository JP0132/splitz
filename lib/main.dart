import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitz/pages/authentication/login.dart';
import 'package:splitz/pages/onboarding/onboarding.dart';
import 'package:splitz/utils/themes/theme.dart';
import 'package:splitz/widgets/CustomBottomNavBar.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      home: const CustomBottomNavbar(),
    );
  }
}
