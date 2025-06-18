import 'package:flutter/material.dart';
import 'package:task/core/extensions/extention_navigator.dart';

class ItemNav extends StatelessWidget {
  const ItemNav({
    super.key,
    required this.image,
    required this.active,
    required this.title,
  });

  final String image, title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        active
            ? Container(
              width: 51,
              height: 6,
              decoration: ShapeDecoration(
                color: const Color(0xFF8900FE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
              ),
            )
            : SizedBox(),
        Image.asset(width: 28, height: 40, image),
        Text(
          title,
          style: context.textStyle.headlineMedium!.copyWith(
            color: active ? context.color.purple100 : context.color.greyText100,
          ),
        ),
      ],
    );
  }
}
