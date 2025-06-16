import 'package:flutter/material.dart';
import 'package:task/core/style/color_extension.dart';

import '../colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.light],
    primaryColor: AppColorligth.white100,
    scaffoldBackgroundColor: AppColorligth.lightPeach100,
    fontFamily: 'Nunito',
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColorligth.white100,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColorligth.black100),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColorligth.black100,
      ),
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark],
    primaryColor: AppColorsDark.white100,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Nunito',
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColorsDark.white100),
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColorsDark.white100,
      ),
    ),
  );
}
