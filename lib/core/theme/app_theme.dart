import 'package:flutter/material.dart';
import 'package:note_app/core/theme/app_color.dart';

import '../utility/constant.dart';

class AppTheme {
  static ThemeData light = ThemeData(
      fontFamily: enFontBase,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        surface: AppColor.grayLightColor,
        primary: AppColor.primaryLightColor,
        secondary: AppColor.secondryColor,
        error: AppColor.redColor,
      ),
      scaffoldBackgroundColor: AppColor.lightBackgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.lightBackgroundColor,
        elevation: 0,
        foregroundColor: AppColor.primaryLightColor,
        centerTitle: true,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColor.color2,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
      ),
      checkboxTheme: const CheckboxThemeData(
          fillColor: WidgetStatePropertyAll(Colors.transparent),
          checkColor: WidgetStatePropertyAll(AppColor.color1),
          overlayColor: WidgetStatePropertyAll(AppColor.grayLightColor)));

  static ThemeData dark = ThemeData(
      fontFamily: enFontBase,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColor.darkBackgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.darkBackgroundColor,
        elevation: 0,
        foregroundColor: AppColor.primaryDarkColor,
        centerTitle: true,
      ),
      colorScheme: const ColorScheme.dark(
        surface: AppColor.grayDarkColor,
        primary: AppColor.primaryDarkColor,
        secondary: AppColor.secondryColor,
        error: AppColor.redColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColor.color2,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
      ),
      checkboxTheme: const CheckboxThemeData(
          fillColor: WidgetStatePropertyAll(Colors.transparent),
          checkColor: WidgetStatePropertyAll(AppColor.color1),
          overlayColor: WidgetStatePropertyAll(AppColor.grayDarkColor)));
}
