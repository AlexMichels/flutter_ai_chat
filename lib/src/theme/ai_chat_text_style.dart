import 'package:flutter/material.dart';

class AiChatTextStyle {
  const AiChatTextStyle._();

  static TextStyle headlineMedium({Color? color}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: color, // Use the passed color
    );
  }

  static TextStyle bodyLarge({Color? color}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color, // Use the passed color
    );
  }

  static TextStyle bodyMedium({Color? color, TextDecoration? decoration, Color? lineColor}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: color, // Use the passed color
      decoration: decoration,
      decorationColor: lineColor,
    );
  }

  static TextStyle labelLarge({Color? color}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: color, // Use the passed color
    );
  }

  static TextStyle labelMedium({Color? color}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: color, // Use the passed color
    );
  }

  static TextStyle labelsmall({Color? color}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: 8,
      fontWeight: FontWeight.w400,
      color: color, // Use the passed color
    );
  }
}
