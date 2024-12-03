import 'package:ai_chat_flutter/src/theme/ai_chat_light_dark_mode_colors.dart';
import 'package:ai_chat_flutter/src/theme/ai_chat_text_style.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: AiChatLightModeColor.primary,
    onPrimary: AiChatLightModeColor.primary,
    onPrimaryFixed: AiChatLightModeColor.onPrimary,
    primaryFixed: AiChatLightModeColor.primaryFixed,
    primaryFixedDim: AiChatLightModeColor.primaryFixedDim,
    onPrimaryFixedVariant: AiChatLightModeColor.onPrimaryFixedDimVariant,
    secondaryFixedDim: AiChatLightModeColor.secondaryFixedDim,
    onSecondaryFixed: AiChatLightModeColor.onSecondaryFixedDim,
    secondaryFixed: AiChatLightModeColor.secondaryFixed,
    onSecondaryFixedVariant: AiChatLightModeColor.onSecondaryFixedVariant,
    secondary: AiChatLightModeColor.secondary,
    onSecondary: AiChatLightModeColor.onSecondary,
    secondaryContainer: AiChatLightModeColor.tertiary,
    onSecondaryContainer: AiChatLightModeColor.primary,
    tertiary: AiChatLightModeColor.tertiary,
    onTertiary: AiChatLightModeColor.onTertiary,
    onTertiaryFixedVariant: AiChatLightModeColor.onTertiaryFixedDimVariant,
    tertiaryFixedDim: AiChatLightModeColor.tertiaryFixedDim,
    onTertiaryFixed: AiChatLightModeColor.onTertiaryFixed,
    tertiaryFixed: AiChatLightModeColor.tertiaryFixed,
    tertiaryContainer: AiChatLightModeColor.tertiaryContainer,
    onSurface: AiChatLightModeColor.surface,
    primaryContainer: AiChatLightModeColor.surfaceBackground,
    onPrimaryContainer: AiChatLightModeColor.background,
  ),
  textTheme: TextTheme(
      headlineMedium: AiChatTextStyle.headlineMedium(color: AiChatLightModeColor.primary),
      bodyLarge: AiChatTextStyle.bodyLarge(color: AiChatLightModeColor.primary),
      bodyMedium: AiChatTextStyle.bodyMedium(
        color: AiChatLightModeColor.secondary,
      ),
      bodySmall: AiChatTextStyle.bodyMedium(
        color: AiChatLightModeColor.primary,
        decoration: TextDecoration.underline,
        lineColor: AiChatLightModeColor.primary,
      ),
      labelLarge: AiChatTextStyle.labelLarge(
        color: AiChatLightModeColor.primary,
      ),
      labelMedium: AiChatTextStyle.labelMedium(color: AiChatLightModeColor.primary),
      labelSmall: AiChatTextStyle.labelsmall(color: AiChatLightModeColor.primary)),
);

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
      primary: AiChatDarkModeColor.primary,
      onPrimary: AiChatDarkModeColor.primary,
      onPrimaryFixed: AiChatDarkModeColor.onPrimary,
      secondary: AiChatDarkModeColor.secondary,
      onSecondary: AiChatDarkModeColor.onSecondary,
      tertiary: AiChatDarkModeColor.tertiary,
      onTertiary: AiChatDarkModeColor.onTertiary,
      onSurface: AiChatDarkModeColor.surface,
      primaryContainer: AiChatDarkModeColor.surfaceBackground,
      onPrimaryContainer: AiChatDarkModeColor.background,
      secondaryFixedDim: AiChatDarkModeColor.secondaryFixedDim,
      onSecondaryFixed: AiChatDarkModeColor.onSecondaryFixedDim,
      secondaryFixed: AiChatDarkModeColor.secondaryFixed,
      onSecondaryFixedVariant: AiChatDarkModeColor.onSecondaryFixedVariant,
      primaryFixed: AiChatDarkModeColor.primaryFixed,
      onTertiaryFixedVariant: AiChatDarkModeColor.onTertiaryFixedDimVariant,
      primaryFixedDim: AiChatDarkModeColor.primaryFixed,
      onPrimaryFixedVariant: AiChatDarkModeColor.onPrimaryFixedDimVariant,
      tertiaryFixedDim: AiChatDarkModeColor.tertiaryFixedDim,
      onTertiaryFixed: AiChatDarkModeColor.onTertiaryFixed,
      tertiaryFixed: AiChatDarkModeColor.tertiaryFixed,
      tertiaryContainer: AiChatDarkModeColor.tertiaryContainer),
  textTheme: TextTheme(
      headlineMedium: AiChatTextStyle.headlineMedium(color: AiChatDarkModeColor.primary),
      bodyLarge: AiChatTextStyle.bodyLarge(color: AiChatDarkModeColor.primary),
      bodyMedium: AiChatTextStyle.bodyMedium(
        color: AiChatDarkModeColor.secondary,
      ),
      bodySmall: AiChatTextStyle.bodyMedium(
          color: AiChatDarkModeColor.primary,
          decoration: TextDecoration.underline,
          lineColor: AiChatDarkModeColor.primary),
      labelLarge: AiChatTextStyle.labelLarge(color: AiChatDarkModeColor.primary),
      labelMedium: AiChatTextStyle.labelMedium(color: AiChatDarkModeColor.primary),
      labelSmall: AiChatTextStyle.labelsmall(color: AiChatDarkModeColor.primary)),
);
