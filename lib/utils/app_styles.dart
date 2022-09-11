import 'package:flutter/material.dart';

MaterialColor primary =
    MaterialColor(0xFF687daf, getSwatch(const Color(0xFF687daf)));

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color backgroundColor = const Color(0xFFeeedf2);
  static Color ticketTop = const Color(0xFF526799);
  static Color ticketBottom = const Color(0xFFF37B67);
  static Color mygrey = const Color(0xFF526480);
  static Color iconColor = const Color(0xFFbfc205);

  static TextStyle textStyle =
      TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(color: textColor, fontSize: 26, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(color: textColor, fontSize: 21, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      color: Colors.grey[500], fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      color: Colors.grey[500], fontSize: 14, fontWeight: FontWeight.bold);
}

Map<int, Color> getSwatch(Color color) {
  final hslColor = HSLColor.fromColor(color);
  final lightness = hslColor.lightness;

  /// if [500] is the default color, there are at LEAST five
  /// steps below [500]. (i.e. 400, 300, 200, 100, 50.) A
  /// divisor of 5 would mean [50] is a lightness of 1.0 or
  /// a color of #ffffff. A value of six would be near white
  /// but not quite.
  const lowDivisor = 6;

  /// if [500] is the default color, there are at LEAST four
  /// steps above [500]. A divisor of 4 would mean [900] is
  /// a lightness of 0.0 or color of #000000
  const highDivisor = 5;

  final lowStep = (1.0 - lightness) / lowDivisor;
  final highStep = lightness / highDivisor;

  return {
    50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
    100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
    200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
    300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
    400: (hslColor.withLightness(lightness + lowStep)).toColor(),
    500: (hslColor.withLightness(lightness)).toColor(),
    600: (hslColor.withLightness(lightness - highStep)).toColor(),
    700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
    800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
    900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
  };
}
