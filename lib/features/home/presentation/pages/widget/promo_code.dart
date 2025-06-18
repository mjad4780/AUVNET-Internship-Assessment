import 'package:flutter/material.dart';
import 'package:task/core/extensions/extention_navigator.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/utility/images_aseets.dart';

class PromoCode extends StatelessWidget {
  const PromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: context.color.white100,
          border: Border.all(
            color: Colors.grey, // لون الحدود
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(
                Assets.imagesGroups,
                width: width(context) / 5,
                height: height(context) / 11,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Got a code !',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Add your code and save on your\norder',
                      style: TextStyle(
                        color: Colors.black.withValues(alpha: 128),
                        fontSize: 10,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
