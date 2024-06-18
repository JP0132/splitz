import 'package:flutter/material.dart';
import 'package:splitz/model/CardTracker.dart';
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
    {"name": "Blue", "colour": CustomColours.blueGradient},
    {"name": "Yellow", "colour": CustomColours.yellowGradient},
    {"name": "Red", "colour": CustomColours.redGradient},
    {"name": "Green", "colour": CustomColours.greenGradient},
    {"name": "Purple", "colour": CustomColours.purpleGradient}
  ];

  static List<CardTracker> cardItemsData = [
    CardTracker(
      totalAmount: 5654.0,
      createdAt: DateTime.now(),
      listName: "Holiday 1",
    ),
    CardTracker(
      totalAmount: 464.0,
      createdAt: DateTime.now(),
      listName: "Shopping Trip 2",
    ),
    CardTracker(
      totalAmount: 464.0,
      createdAt: DateTime.now(),
      listName: "Shopping Trip 2",
    ),
    CardTracker(
      totalAmount: 464.0,
      createdAt: DateTime.now(),
      listName: "Shopping Trip 2",
    ),
    CardTracker(
      totalAmount: 464.0,
      createdAt: DateTime.now(),
      listName: "Shopping Trip 2",
    ),
  ];
}
