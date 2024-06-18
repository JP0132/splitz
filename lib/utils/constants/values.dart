import 'package:flutter/material.dart';
import 'package:splitz/utils/constants/colours.dart';

class CustomValues {
  static List<String> categories = [
    "Holiday",
    "Shopping",
    "Personal",
    "Work",
    "Food & Dining",
    "Entertainment"
  ];

  static List<IconData> icons = [
    Icons.work,
    Icons.beach_access,
    Icons.person,
    Icons.dining,
    Icons.shopping_bag,
    Icons.tv
  ];

  static List<Map<String, Object>> colours = [
    {"name": "blue", "colour": CustomColours.blueGradient},
    {"name": "blue", "colour": CustomColours.yellowGradient},
    {"name": "blue", "colour": CustomColours.redGradient},
    {"name": "blue", "colour": CustomColours.greenGradient},
    {"name": "blue", "colour": CustomColours.purpleGradient}
  ];
}
