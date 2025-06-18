import 'package:flutter/material.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/utility/images_aseets.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: height(context) / 6.3,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xFF8900FE), const Color(0xFFFFDE59)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      child: Row(
        children: [
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Delivering to',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Al Satwa, 81A Street',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.02,
                ),
              ),
              Text(
                'Hi hepa! ',
                style: TextStyle(
                  color: const Color(0xFFF9F9F9),
                  fontSize: 30,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.30,
                ),
              ),
            ],
          ),
          Spacer(flex: 5),
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(Assets.person),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
