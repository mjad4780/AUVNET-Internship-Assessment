import 'package:flutter/material.dart';
import 'package:task/core/style/color_extension.dart';

import '../colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    extensions: const <ThemeExtension<dynamic>>[MyColors.light],
    primaryColor: AppColorligth.white100,
    scaffoldBackgroundColor: AppColorligth.white100,
    fontFamily: 'Nunito',
    brightness: Brightness.light,
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 12,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        height: 1.33,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        color: const Color(0xFF1877F2),
        fontSize: 14,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w700,
      ),
      displayLarge: TextStyle(
        color: const Color(0xFF333333),
        fontSize: 28,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
      ),
      displaySmall: TextStyle(
        color: const Color(0xE5677294),
        fontSize: 14,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w400,
        height: 1.66,
        letterSpacing: -0.30,
      ),
      displayMedium: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
      ),
    ),
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
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        color: const Color(0xFF1877F2),
        fontSize: 14,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w700,
      ),
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
      ),
      displaySmall: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w400,
        height: 1.66,
        letterSpacing: -0.30,
      ),
      displayMedium: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w500,
      ),
    ),
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
