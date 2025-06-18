import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/extensions/extention_navigator.dart';
import 'package:task/core/helpers/spacing.dart';

import '../../../core/style/text_string.dart';
import '../../../core/widget/app_text_button.dart';
import '../../../utility/images_aseets.dart';
import '../data/model/on_bording_model.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingData data;

  final void Function() onPressed;

  const OnboardingPage({
    super.key,
    required this.data,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height(context) / 2,
          child: Stack(
            children: [
              Positioned(
                left: 0,

                child: SvgPicture.asset(
                  Assets.imagesImage,
                  height: height(context) / 2.9,
                ),
              ),

              Positioned(
                top: height(context) / 9,
                left: width(context) * 0.0666,
                child: CircleAvatar(
                  radius: height(context) / 5.2,
                  backgroundImage: AssetImage(Assets.logoAuth),
                ),
              ),
            ],
          ),
        ),
        Spacer(),

        Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                data.title,

                style: context.textStyle.displayLarge,
                textAlign: TextAlign.center,
              ),
              verticalSpace(20),
              Text(
                data.description,
                style: context.textStyle.displaySmall,
                textAlign: TextAlign.center,
              ),
              verticalSpace(40),
              // Get Started
              AppTextButton(
                buttonText: AppTexts.getStarted,
                onPressed: onPressed,
              ),

              verticalSpace(20),

              // Next text
              Text(AppTexts.next, style: context.textStyle.displaySmall),
              verticalSpace(20),
            ],
          ),
        ),
      ],
    );
  }
}
