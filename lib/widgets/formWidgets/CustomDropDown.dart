import 'package:flutter/material.dart';
import 'package:splitz/utils/constants/colours.dart';
import 'package:splitz/utils/constants/values.dart';
import 'package:splitz/utils/helpers/HelperFunctions.dart';

class Customdropdown extends StatefulWidget {
  final String dropListName;
  final List<dynamic> values;
  const Customdropdown(
      {super.key, required this.dropListName, required this.values});

  @override
  State<Customdropdown> createState() => _CustomdropdownState();
}

class _CustomdropdownState extends State<Customdropdown> {
  dynamic dropdownValue;

  @override
  Widget build(BuildContext context) {
    final bool isDark = Helperfunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        border: Border.all(
            color: isDark
                ? CustomColours.darkOnSurface
                : CustomColours.lightOnSurface,
            width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<dynamic>(
          isExpanded: true,
          hint: Text(
            widget.dropListName,
            style: TextStyle(fontSize: 12),
          ),
          value: dropdownValue,
          underline: null,
          onChanged: (dynamic newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: widget.values.map<DropdownMenuItem<dynamic>>((dynamic value) {
            if (value is String) {
              return DropdownMenuItem<dynamic>(
                value: value,
                child: Text(value.toString()), // Convert value to string
              );
            } else if (value is Map<String, Object>) {
              return DropdownMenuItem<dynamic>(
                value: value['colours'],
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        gradient: value['colour'] as LinearGradient?,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(value['name'] as String),
                  ],
                ), // Convert value to string
              );
            } else if (value is IconData) {
              return DropdownMenuItem<dynamic>(
                value: value,
                child: Row(
                  children: [
                    Icon(value),
                  ],
                ),
              );
            } else {
              throw ArgumentError(
                  'Invalid type for dropdown item: ${value.runtimeType}');
            }
          }).toList(),
        ),
      ),
    );
  }
}
