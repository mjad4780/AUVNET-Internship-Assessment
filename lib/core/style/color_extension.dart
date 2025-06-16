import 'package:flutter/material.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.moreLightGray,
    required this.lighterGray,
    required this.black100,
    required this.white100,
    required this.darkGrey100,
    required this.purple100,
    required this.greyText100,
    required this.darkBackground58,
    required this.darkPurple100,
    required this.lightGrey100,
    required this.yellow100,
    required this.black50,
    required this.grey20,
    required this.black30,
    required this.lightPeach100,
    required this.green30,
    required this.steelBlue100,
    required this.steelBlue90,
    required this.grey333,
    required this.greyF5,
    required this.facebookBlue,
    required this.black10,
    required this.black25,
    required this.greyF6,
    required this.greyB9,
    required this.greyFA,
  });

  final Color moreLightGray;
  final Color lighterGray;
  final Color black100;
  final Color white100;
  final Color darkGrey100;
  final Color purple100;
  final Color greyText100;
  final Color darkBackground58;
  final Color darkPurple100;
  final Color lightGrey100;
  final Color yellow100;
  final Color black50;
  final Color grey20;
  final Color black30;
  final Color lightPeach100;
  final Color green30;
  final Color steelBlue100;
  final Color steelBlue90;
  final Color grey333;
  final Color greyF5;
  final Color facebookBlue;
  final Color black10;
  final Color black25;
  final Color greyF6;
  final Color greyB9;
  final Color greyFA;

  @override
  MyColors copyWith({
    Color? moreLightGray,
    Color? lighterGray,
    Color? black100,
    Color? white100,
    Color? darkGrey100,
    Color? purple100,
    Color? greyText100,
    Color? darkBackground58,
    Color? darkPurple100,
    Color? lightGrey100,
    Color? yellow100,
    Color? black50,
    Color? grey20,
    Color? black30,
    Color? lightPeach100,
    Color? green30,
    Color? steelBlue100,
    Color? steelBlue90,
    Color? grey333,
    Color? greyF5,
    Color? facebookBlue,
    Color? black10,
    Color? black25,
    Color? greyF6,
    Color? greyB9,
    Color? greyFA,
  }) {
    return MyColors(
      moreLightGray: moreLightGray ?? this.moreLightGray,
      lighterGray: lighterGray ?? this.lighterGray,
      black100: black100 ?? this.black100,
      white100: white100 ?? this.white100,
      darkGrey100: darkGrey100 ?? this.darkGrey100,
      purple100: purple100 ?? this.purple100,
      greyText100: greyText100 ?? this.greyText100,
      darkBackground58: darkBackground58 ?? this.darkBackground58,
      darkPurple100: darkPurple100 ?? this.darkPurple100,
      lightGrey100: lightGrey100 ?? this.lightGrey100,
      yellow100: yellow100 ?? this.yellow100,
      black50: black50 ?? this.black50,
      grey20: grey20 ?? this.grey20,
      black30: black30 ?? this.black30,
      lightPeach100: lightPeach100 ?? this.lightPeach100,
      green30: green30 ?? this.green30,
      steelBlue100: steelBlue100 ?? this.steelBlue100,
      steelBlue90: steelBlue90 ?? this.steelBlue90,
      grey333: grey333 ?? this.grey333,
      greyF5: greyF5 ?? this.greyF5,
      facebookBlue: facebookBlue ?? this.facebookBlue,
      black10: black10 ?? this.black10,
      black25: black25 ?? this.black25,
      greyF6: greyF6 ?? this.greyF6,
      greyB9: greyB9 ?? this.greyB9,
      greyFA: greyFA ?? this.greyFA,
    );
  }

  @override
  MyColors lerp(ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) return this;
    return MyColors(
      moreLightGray: Color.lerp(moreLightGray, other.moreLightGray, t)!,
      lighterGray: Color.lerp(lighterGray, other.lighterGray, t)!,
      black100: Color.lerp(black100, other.black100, t)!,
      white100: Color.lerp(white100, other.white100, t)!,
      darkGrey100: Color.lerp(darkGrey100, other.darkGrey100, t)!,
      purple100: Color.lerp(purple100, other.purple100, t)!,
      greyText100: Color.lerp(greyText100, other.greyText100, t)!,
      darkBackground58:
          Color.lerp(darkBackground58, other.darkBackground58, t)!,
      darkPurple100: Color.lerp(darkPurple100, other.darkPurple100, t)!,
      lightGrey100: Color.lerp(lightGrey100, other.lightGrey100, t)!,
      yellow100: Color.lerp(yellow100, other.yellow100, t)!,
      black50: Color.lerp(black50, other.black50, t)!,
      grey20: Color.lerp(grey20, other.grey20, t)!,
      black30: Color.lerp(black30, other.black30, t)!,
      lightPeach100: Color.lerp(lightPeach100, other.lightPeach100, t)!,
      green30: Color.lerp(green30, other.green30, t)!,
      steelBlue100: Color.lerp(steelBlue100, other.steelBlue100, t)!,
      steelBlue90: Color.lerp(steelBlue90, other.steelBlue90, t)!,
      grey333: Color.lerp(grey333, other.grey333, t)!,
      greyF5: Color.lerp(greyF5, other.greyF5, t)!,
      facebookBlue: Color.lerp(facebookBlue, other.facebookBlue, t)!,
      black10: Color.lerp(black10, other.black10, t)!,
      black25: Color.lerp(black25, other.black25, t)!,
      greyF6: Color.lerp(greyF6, other.greyF6, t)!,
      greyB9: Color.lerp(greyB9, other.greyB9, t)!,
      greyFA: Color.lerp(greyFA, other.greyFA, t)!,
    );
  }

  /// 🌞 Light Mode
  static const MyColors light = MyColors(
    moreLightGray: Color(0xFFFDFDFF),
    lighterGray: Color(0xFFEDEDED),
    black100: Color(0xFF000000),
    white100: Color(0xFFFFFFFF),
    darkGrey100: Color(0xFF222222),
    purple100: Color(0xFF8900FE),
    greyText100: Color(0xFF484C52),
    darkBackground58: Color.fromRGBO(30, 30, 30, 0.58),
    darkPurple100: Color(0xFF170E2B),
    lightGrey100: Color(0xFFD9D9D9),
    yellow100: Color(0xFFFFDE59),
    black50: Color.fromRGBO(0, 0, 0, 0.5),
    grey20: Color.fromRGBO(196, 196, 196, 0.2),
    black30: Color.fromRGBO(0, 0, 0, 0.3),
    lightPeach100: Color(0xFFFFEEE6),
    green30: Color.fromRGBO(14, 190, 126, 0.3),
    steelBlue100: Color(0xFF677294),
    steelBlue90: Color.fromRGBO(103, 114, 148, 0.9),
    grey333: Color(0xFF333333),
    greyF5: Color(0xFFF5F5F5),
    facebookBlue: Color(0xFF1877F2),
    black10: Color.fromRGBO(0, 0, 0, 0.1),
    black25: Color.fromRGBO(0, 0, 0, 0.25),
    greyF6: Color(0xFFF5F6F7),
    greyB9: Color(0xFFB9C0C9),
    greyFA: Color(0xFFFAFAFA),
  );

  /// 🌚 Dark Mode
  static const MyColors dark = MyColors(
    moreLightGray: Color(0xFF0A0A0A),
    lighterGray: Color(0xFF101010),
    black100: Color(0xFFFFFFFF),
    white100: Color(0xFF000000),
    darkGrey100: Color(0xFFEEEEEE),
    purple100: Color(0xFFBB86FC),
    greyText100: Color(0xFFAAAAAA),
    darkBackground58: Color.fromRGBO(18, 18, 18, 0.58),
    darkPurple100: Color(0xFF1F1B24),
    lightGrey100: Color(0xFF2C2C2C),
    yellow100: Color(0xFFFFD700),
    black50: Color.fromRGBO(255, 255, 255, 0.5),
    grey20: Color.fromRGBO(255, 255, 255, 0.2),
    black30: Color.fromRGBO(255, 255, 255, 0.3),
    lightPeach100: Color(0xFF3E2723),
    green30: Color.fromRGBO(14, 190, 126, 0.3),
    steelBlue100: Color(0xFF8AA1C1),
    steelBlue90: Color.fromRGBO(138, 161, 193, 0.9),
    grey333: Color(0xFFCCCCCC),
    greyF5: Color(0xFF1E1E1E),
    facebookBlue: Color(0xFF3A5897),
    black10: Color.fromRGBO(255, 255, 255, 0.1),
    black25: Color.fromRGBO(255, 255, 255, 0.25),
    greyF6: Color(0xFF202124),
    greyB9: Color(0xFF888888),
    greyFA: Color(0xFF121212),
  );
}
