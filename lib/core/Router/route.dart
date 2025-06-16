import 'package:flutter/material.dart';

import 'base_routes.dart';

class AppRoutes {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
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
