import 'package:flutter/material.dart';

Color getColorFromHexString(String hexString) {
  if (hexString.startsWith('#')) {
    hexString = hexString.substring(1);
  }

  if (hexString.length == 6) {
    hexString = 'FF$hexString';
  }

  return Color(int.parse(hexString, radix: 16) | 0xFF000000);
}
