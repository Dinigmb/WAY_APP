import 'dart:ui';

import 'package:flutter/material.dart';

abstract class FlowColors {
  static const mainColor = Color.fromRGBO(211, 94, 90, 1);
}

abstract class FlowColorsrosa {
  static const mainColor = Color.fromRGBO(234, 174, 171, 1);
}

abstract class FlowColorsBackground {
  static const mainColor = Color.fromRGBO(250, 241, 240, 1);
}

const MaterialColor flowColor = MaterialColor(
  _flowPrimaryValue,
  <int, Color>{
    50: Color(0xFFFAF1F0),
    100: Color(0xFFF5CBA9),
    200: Color(0xFFF48FB1),
    300: Color(0xFFCFA6B7),
    400: Color(0xFFEA9049),
    500: Color(_flowPrimaryValue),
    600: Color(0xFFD35E5A),
    700: Color(0xFFEAAEAB),
    800: Color(0xFFBF374C),
    900: Color(0xFF903868),
  },
);
const int _flowPrimaryValue = 0xFFEA9049;
