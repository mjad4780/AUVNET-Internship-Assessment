import 'package:flutter/material.dart';
import 'package:task/core/Router/route_string.dart';
import 'package:task/features/auth/presentation/bloc/auth_bloc.dart';

import '../../features/auth/presentation/pages/sign_in_screen.dart';
import '../../features/auth/presentation/pages/sign_up_screen.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/onBoarding/on_bording_screen.dart';
import 'base_routes.dart';

class AppRoutes {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case StringRoute.onBoarding:
        return BaseRoute(
          page: const OnboardingScreen(),
          transitionType: RouteTransitionType.slideUp,
        );
      case StringRoute.signIn:
        return BaseRoute(
          page: const SignInScreen(),
          transitionType: RouteTransitionType.slideLeft,
        );
      case StringRoute.signUp:
        return BaseRoute(
          page: SignUpScreen(authBloc: args as AuthBloc),
          transitionType: RouteTransitionType.slideRight,
        );
      case StringRoute.home:
        return BaseRoute(
          page: const HomeScreen(),
          transitionType: RouteTransitionType.slideDown,
        );
      case StringRoute.main:
        return BaseRoute(
          page: const HomeScreen(),
          transitionType: RouteTransitionType.slideRight,
        );
      // case StringRoute.categories:
      //   return BaseRoute(
      //     page: CategoreisScrean(
      //       data: args as Map<String, dynamic>,
      //     ),
      //     transitionType: RouteTransitionType.slideUp,
      //   );

      default:
        return BaseRoute(
          page: const Scaffold(),
          transitionType: RouteTransitionType.fade,
        );
    }
  }
}
