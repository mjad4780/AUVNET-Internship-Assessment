import 'package:flutter/material.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.moreLightGray,
    required this.lighterGray,
  });

  final Color moreLightGray;
  final Color lighterGray;

  @override
  MyColors copyWith({
    Color? moreLightGray,
    Color? lighterGray,
  }) {
    return MyColors(
      moreLightGray: moreLightGray ?? this.moreLightGray,
      lighterGray: lighterGray ?? this.lighterGray,
    );
  }

  @override
  MyColors lerp(ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) return this;
    return MyColors(
      moreLightGray: Color.lerp(moreLightGray, other.moreLightGray, t)!,
      lighterGray: Color.lerp(lighterGray, other.lighterGray, t)!,
    );
  }

  static const MyColors light = MyColors(
    moreLightGray: Color(0xFFFDFDFF),
    lighterGray: Color(0xFFEDEDED),
  );

  static const MyColors dark = MyColors(
    moreLightGray: Color(0xFF0A0A0A),
    lighterGray: Color(0xFF101010),
  );
}
