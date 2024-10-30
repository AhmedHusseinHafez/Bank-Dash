// Flutter imports:
import 'package:flutter/material.dart';

class ColorManager {
  const ColorManager._();

  static const Color transparent = Colors.transparent;
  static const Color skyBlue = Color(0xffE6EFF5);

  static const Color primary1 = Color(0xffFEAA09);
  static const Color primary2 = Color(0xff343C6A);
  static const Color primary3 = Color(0xff2D60FF);
  static const Color secondary = Color(0xffFE5C73);
  static const Color silverGray = Color(0xffB1B1B1);
  static const Color vividBlue = Color(0xff1814F3);
  static const Color softCloud = Color(0xffF5F7FA);
  static const Color mutedBlue = Color(0xff8BA3CB);
  static const Color grayishCornflower = Color(0xff718EBF);
  static const Color textFiledBackground = Color(0xffEDF1F7);
  static const Color dashChart = Color(0xffDFE5EE);
  static const Color softIceBlue = Color(0xffDFEAF2);
  static const Color deepSlateRay = Color(0xff464246);
  static const Color lightCream = Color(0xffFFF5D9);
  static const Color palePeriwinkle = Color(0xffE7EDFF);
  static const Color mintIce = Color(0xffDCFAF8);
  static const Color horizontalChartLineColor = Color(0xffF3F3F5);
  static const Color chartRightBarColor = Color(0xff16DBCC);

  static const Color black = Color(0xff000000);

  static const Color white = Color(0xffFFFFFF);

  static const Color lightGray = Color(0xffF7F9FA);
  static const Color borderGray = Color(0xffF1F1F1);

  static const Color veryDarkGray = Color(0xff232323);
  static const Color vibrantRed = Color(0xffFF4B4A);
  static const Color brightMintGreen = Color(0xff41D4A8);

  static const Color cyanBlueAzure = Color(0xff208CC8);

  static const Color drkCerulean = Color(0xff064061);

  static const Color lightBeige = Color(0xffE2DECD);

  static const Color darkCerulean = Color(0xff064061);

  static const Color gray = Color(0xffAAAAAA);

  static const Color whiteSmoke = Color(0xffFAFAFA);

  static const Color coral = Color(0xffF3735E);

  static const Color pastelGreen = Color(0xff7DD97B);

  static const Color cyanBlue = Color(0xff208CC8);

  //liner gradient

  static const LinearGradient gradient1 = LinearGradient(
    colors: [
      Color(0xFF4C49ED),
      Color(0xFF0A06F4),
    ],
    stops: [
      0.0,
      1.0,
    ],
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
  );

  static const LinearGradient gradient2 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [
        0.0,
        1.0,
      ],
      colors: [
        Color(0x26FFFFFF),
        Color(0x26FFFFFF),
      ]);

  static const LinearGradient cartGradient = LinearGradient(
    colors: [
      Color(0x802D60FF),
      Color(0x002D60FF),
    ],
    stops: [
      0.0,
      1.0,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
