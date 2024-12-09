import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// The color white
  static const white = MaterialColor(
    0xFFFFFFFF,
    {
      10: Color(0x1AFFFFFF),
      20: Color(0x33FFFFFF),
      30: Color(0x4DFFFFFF),
      40: Color(0x66FFFFFF),
      50: Color(0x80FFFFFF),
      60: Color(0x99FFFFFF),
      70: Color(0xB3FFFFFF),
      80: Color(0xCCFFFFFF),
      90: Color(0xE6FFFFFF),
    },
  );

  /// The color black
  static const black = MaterialColor(
    0xFF000000,
    {
      10: Color(0x1A000000),
      11: Color(0xFF111111),
      20: Color(0x33000000),
      22: Color(0xFF222222),
      30: Color(0x4D000000),
      40: Color(0x66000000),
      50: Color(0x80000000),
      60: Color(0x99000000),
      70: Color(0xB3000000),
      80: Color(0xCC000000),
      90: Color(0xE6000000),
    },
  );

  /// The color transparent
  static const transparent = Colors.transparent;
}
