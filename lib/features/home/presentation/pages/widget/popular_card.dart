import 'package:flutter/material.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/widget/custom_cache_networking_image.dart';

class PopularCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int time;

  const PopularCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: width(context) / 5,
            height: height(context) / 11,

            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: const Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: SmartNetworkImage(imageUrl: imageUrl),
          ),

          verticalSpace(3),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w500,
            ),
          ),

          Text(
            '$time mins',
            style: TextStyle(
              color: const Color(0x931E1E1E),
              fontSize: 10,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
