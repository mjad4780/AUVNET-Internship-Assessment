import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/helpers/spacing.dart';

class ShortcutCard extends StatelessWidget {
  final String label;
  final String image;
  const ShortcutCard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width(context) / 6,
          height: height(context) / 13,
          decoration: ShapeDecoration(
            color: const Color(0xFFFFEEE6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(image, width: 10, height: height(context) / 23),
            ],
          ),
        ),
        const SizedBox(height: 4),

        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
