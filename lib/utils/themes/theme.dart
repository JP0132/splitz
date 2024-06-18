import 'package:flutter/material.dart';
import 'package:splitz/utils/constants/colours.dart';
import 'package:splitz/utils/themes/custom_themes/text_theme.dart';

class CustomAppTheme {
  CustomAppTheme._();

  static const Color darkGrey = Color(0xFF121212);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      brightness: Brightness.light, // Define a base color or seed color
      primary: CustomColours.lightPrimary,
      secondary: CustomColours.lightSecondary,
      surface: CustomColours.lightSurface,
      error: CustomColours.lightError,
      onSurface: CustomColours.lightOnSurface,
      onPrimary: CustomColours.lightOnPrimary,
      onError: CustomColours.lightOnError,
    ),
    scaffoldBackgroundColor: Colors.white,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkGrey,
      brightness: Brightness.dark, // Define a base color or seed color
      primary: CustomColours.darkPrimary,
      secondary: CustomColours.darkSecondary,
      surface: CustomColours.darkSurface,
      error: CustomColours.darkError,
      onSurface: CustomColours.darkOnSurface,
      onPrimary: CustomColours.darkOnPrimary,
      onError: CustomColours.darkOnError,
    ),
    scaffoldBackgroundColor: CustomColours.darkBackground,
  );
}
