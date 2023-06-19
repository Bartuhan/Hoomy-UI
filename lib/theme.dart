import 'package:flutter/material.dart';
import 'package:hoomy_ui/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: kPrimaryColor),
    borderRadius: BorderRadius.circular(20),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    focusColor: Colors.white,
    //floatingLabelBehavior: FloatingLabelBehavior.always,
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
    filled: true,
    fillColor: Colors.white,
    hintStyle: const TextStyle(color: kHeadLineColor),
    prefixIconColor: kHeadLineColor,
    suffixIconColor: kHeadLineColor,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF757575)),
    bodyMedium: TextStyle(color: Color(0xFF757575)),
  );
}
