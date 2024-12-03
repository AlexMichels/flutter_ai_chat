import 'package:flutter/material.dart';

extension ThemeHelper on ThemeData {
  bool get isDarkMode => brightness == Brightness.dark;
}
