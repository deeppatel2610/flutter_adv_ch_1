import 'package:flutter/material.dart';

class ThemeChange {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xffF9F5F6),
      onPrimary: Colors.black,
      secondary: Color(0xffF8E8EE),
      onSecondary: Colors.black45,
      error: Color(0xffFDCEDF),
      onError: Colors.redAccent,
      surface: Color(0xffF2BED1),
      onSurface: Colors.black,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffFFAC41),
      onPrimary: Colors.black,
      secondary: Color(0xff323232),
      onSecondary: Colors.white60,
      error: Color(0xffFF1E56),
      onError: Colors.yellowAccent,
      surface: Colors.black,
      onSurface: Colors.deepOrangeAccent,
    ),
  );
}
