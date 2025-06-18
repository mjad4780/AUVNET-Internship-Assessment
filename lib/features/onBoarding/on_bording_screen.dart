import 'package:flutter/material.dart';
import 'package:task/core/Router/route_string.dart';
import 'package:task/core/constants/const.dart';
import 'package:task/core/extensions/extention_navigator.dart';
import 'package:task/core/get_it/get_it.dart';
import 'package:task/core/helpers/cache_helper.dart';

import 'data/model/on_bording_model.dart';
import 'widget/custom_on_boarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              // Color(0xFF8B4CDE),
              // Color(0xFFE6A85C),
              Color(0xFFFFFFFF),
              Color(0xFF7ED4C7),
            ],
            stops: [0.79, 1.3],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: onboardingPages.length,
                itemBuilder: (context, index) {
                  return OnboardingPage(
                    onPressed: () {
                      if (_currentPage == 2) {
                        context.pushNamedAndRemoveUntil(StringRoute.signIn);
                        getIt<CacheHelper>().saveBool(
                          key: Constants.keyOnbording,
                          value: true,
                        );
                      } else {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    data: onboardingPages[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
