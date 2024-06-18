import 'package:flutter/material.dart';

class CustomTextTheme {
  CustomTextTheme._();

  // Text themes to use when light theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black),
    bodyLarge: const TextStyle(color: Colors.black),
    bodyMedium: const TextStyle(color: Colors.black),
    headlineSmall: const TextStyle(color: Colors.black),
    titleLarge: const TextStyle(color: Colors.black),
    titleMedium: const TextStyle(color: Colors.black),
    titleSmall: const TextStyle(color: Colors.black),
    labelLarge: const TextStyle(color: Colors.black),
    labelMedium: const TextStyle(color: Colors.black),
    labelSmall: const TextStyle(color: Colors.black),
  );

  // Text themes to use when dark theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodyLarge: const TextStyle(color: Colors.white),
    bodyMedium: const TextStyle(color: Colors.white),
    headlineSmall: const TextStyle(color: Colors.white),
    titleLarge: const TextStyle(color: Colors.white),
    titleMedium: const TextStyle(color: Colors.white),
    titleSmall: const TextStyle(color: Colors.white),
    labelLarge: const TextStyle(color: Colors.white),
    labelMedium: const TextStyle(color: Colors.white),
    labelSmall: const TextStyle(color: Colors.white),
  );
}
