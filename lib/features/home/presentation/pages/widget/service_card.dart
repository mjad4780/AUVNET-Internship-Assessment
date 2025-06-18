import 'package:flutter/material.dart';
import 'package:task/core/extensions/extention_navigator.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/widget/custom_cache_networking_image.dart';

class ServiceCard extends StatelessWidget {
  final String label, image;
  final int badge;

  const ServiceCard({
    super.key,

    required this.label,
    required this.badge,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width(context) / 4,
          height: height(context) / 11,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(16),
          ),
          child: SmartNetworkImage(imageUrl: image),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: context.color.purple100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            '${badge}mins',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w500,
            letterSpacing: 0.01,
          ),
        ),
      ],
    );
  }
}
