import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        primary: Color(0xFF1c3a58),
        secondary: Color(0xFFF7B538),
        seedColor: Color(0xff150dc4)),
    textTheme: appTextTheme,
    inputDecorationTheme: inputDecorationTheme,
    elevatedButtonTheme: elevatedButtonThemeData);

final ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xfff7b538),
        minimumSize: Size(double.infinity, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))));

final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  hintStyle: TextStyle(color: Color(0xFF3B9AE1).withOpacity(0.5)),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF3B9AE1)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF3B9AE1).withOpacity(0.5)),
  ),
);

final TextTheme appTextTheme = const TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    headlineMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white60));
