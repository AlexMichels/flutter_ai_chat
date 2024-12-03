import 'dart:ui';

import 'package:flutter/material.dart';

class AiChatLightModeColor {
  const AiChatLightModeColor._();
  static const Color background = Color(0xffffffff);
  static const Color surfaceBackground = Color(0xffffffff);
  static const Color primary = Color(0xff090909);
  static const Color onPrimary = Color(0xff9B9B9B);
  static const Color primaryFixed = Color(0xffcfcfcf);
  static const Color onTertiaryFixedDimVariant = Color(0xff9a9da1);
  static const Color primaryFixedDim = Color(0xff9a9da1);
  static const Color onPrimaryFixedDimVariant = Color(0xffececec);
  static const Color onSecondaryFixedDim = Color(0xff7c7c7c);
  static const Color secondary = Color(0xffE6F6F4);
  static Color onSecondary = Color.lerp(
    const Color(0xFF01579B),
    const Color(0xFF54C5F8),
    0.5,
  )!;
  static const Color secondaryFixedDim = Color(0xffe5eaf2);
  static const Color secondaryFixed = Color(0xfff9f9f9);
  static const Color onSecondaryFixedVariant = Color(0xffececec);
  static const Color tertiary = Color(0xff5F5F5F);
  static const Color onTertiary = Color(0xffD9D9D9);
  static const Color tertiaryFixedDim = Color(0xff9b9b9b);
  static const Color onTertiaryFixed = Color(0xfff9f9f9);
  static const Color tertiaryFixed = Color(0xff414141);
  static const Color tertiaryContainer = Color(0xffffffff);
  static const Color surface = Color(0xfff4f4f4);
  static const Color onSurface = Color(0xff090909);
}

class AiChatDarkModeColor {
  const AiChatDarkModeColor._();
  static const Color background = Color(0xff414140);
  static const Color surfaceBackground = Color(0xff242424);
  static const Color primary = Color(0xffffffff);
  static const Color onPrimary = Color(0xff929291);
  static const Color primaryFixed = Color(0xff2b2b2b);
  static const Color onTertiaryFixedDimVariant = Color(0xffffffff);
  static const Color primaryFixedDim = Color(0xff414141);
  static const Color onPrimaryFixedDimVariant = Color(0xff5a5a59);
  static const Color onSecondaryFixedDim = Color(0xffBDBDBD);
  static const Color secondary = Color(0xffD9F2EF);
  static Color onSecondary = Color.lerp(
    const Color(0xFF5A5A5A),
    const Color(0xFF767676),
    0.5,
  )!;
  static const Color secondaryFixedDim = Color(0xff242424);
  static const Color secondaryFixed = Color(0xff090909);
  static const Color onSecondaryFixedVariant = Color(0xff414141);
  static const Color tertiary = Color(0xff5F5F5F);
  static const Color onTertiary = Color(0xffD9D9D9);
  static const Color tertiaryFixedDim = Color(0xff5a5a59);
  static const Color onTertiaryFixed = Color(0xff414141);
  static const Color tertiaryFixed = Color(0xffd9d9d9);
  static const Color tertiaryContainer = Color(0xffffffff);
  static const Color surface = Color(0xff414141);
  static const Color onSurface = Color(0xffffffff);
}
