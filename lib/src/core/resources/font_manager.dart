// Dart imports:
import 'dart:ui';

// Package imports:

class FontConstants {
  const FontConstants._internal();
  static const FontConstants _instance = FontConstants._internal(); // singleton
  factory FontConstants() => _instance;
  static const String defaultFontFamily = "Inter_18pt";

  static const String montFontFamily = "Mont-Heavy-DEMO";
}

class FontWeightManager {
  const FontWeightManager._internal();
  static const FontWeightManager _instance =
      FontWeightManager._internal(); // singleton
  factory FontWeightManager() => _instance;

  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

class FontSize {
  const FontSize._internal();
  static const FontSize _instance = FontSize._internal(); // singleton
  factory FontSize() => _instance;

  static double s12 = 12;

  static double s14 = 14;

  static double s15 = 15;

  static double s16 = 16;

  static double s18 = 18;

  static double s20 = 20;

  static double s22 = 22;

  static double s24 = 24;

  static double s25 = 25;
  static double s28 = 28;

  static double s36 = 36;

  static double s45 = 45;
  static double s48 = 48;

  static double s57 = 57;

  static double s60 = 60;
}
