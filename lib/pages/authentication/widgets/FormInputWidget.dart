import 'package:flutter/material.dart';
import 'package:splitz/utils/constants/colours.dart';

class FormInputWidget extends StatelessWidget {
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String labelText;
  final bool isDark;
  final double? vertical;
  final double? horizontal;
  final bool? expands;

  const FormInputWidget({
    super.key,
    required this.prefixIcon,
    this.suffixIcon,
    required this.labelText,
    required this.isDark,
    this.vertical,
    this.horizontal,
    this.expands,
  });

  @override
  Widget build(BuildContext context) {
    final Color iconColor = !isDark ? Colors.black : Colors.white;
    final Color textColor = !isDark ? Colors.black : Colors.white;
    final Color backgroundColor = isDark ? Colors.white : Colors.black;
    final Color borderColour =
        isDark ? CustomColours.darkOnSurface : CustomColours.lightOnSurface;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        expands: false,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
          ),
          suffixIcon: suffixIcon != null
              ? Icon(
                  suffixIcon,
                )
              : null,
          labelText: labelText,
          labelStyle: TextStyle(color: textColor),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          contentPadding: EdgeInsets.symmetric(
              horizontal: horizontal ?? 20, vertical: vertical ?? 22),
          fillColor: backgroundColor,
          filled: false,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColour, width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColour, width: 2.0),
            borderRadius: BorderRadius.circular(15),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: borderColour, width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
