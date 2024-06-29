import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
      primary: Color(0xFF01355d),
      onPrimary: Color(0xff008FFF),
      secondary: Color(0xFF00447e),
      onSecondary: Color(0xffFFAA00),
      seedColor: Color(0xff150dc4)),
  textTheme: appTextTheme,
  inputDecorationTheme: inputDecorationTheme,
  //elevatedButtonTheme: elevatedButtonThemeData
);

// final ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//         backgroundColor: Color(0xfff7b538),
//         minimumSize: Size(double.infinity, 48),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))));

final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  hintStyle: TextStyle(color: Color(0xFF3B9AE1).withOpacity(0.5)),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF3B9AE1)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF3B9AE1).withOpacity(0.5)),
  ),
);

const TextTheme appTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    headlineMedium: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff01355d)),
    bodyLarge: TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
    displayLarge: TextStyle(
        fontSize: 16, color: Color(0xff01355d), fontWeight: FontWeight.w700),
    displayMedium: TextStyle(
        fontSize: 14, color: Color(0xffcccccc), fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.white),
    bodySmall: TextStyle(
      fontSize: 14,
      color: Color(0xff01355d),
    ),
    labelSmall: TextStyle(fontSize: 12, color: Color(0xff01355d)));
