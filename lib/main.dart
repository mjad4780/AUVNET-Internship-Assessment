import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:task/core/Router/route_string.dart';
import 'package:task/core/app/app.dart';
import 'package:task/core/constants/const.dart';
import 'package:task/core/extensions/extention_navigator.dart';
import 'package:task/core/get_it/get_it.dart';
import 'package:task/core/helpers/cache_helper.dart';

import 'package:task/core/helpers/observer.dart';
import 'package:task/core/widget/modern_error_screen.dart';
import 'package:task/key.dart';
import 'package:device_preview/device_preview.dart';

import 'core/helpers/hive_service.dart';

// Entry point of the Flutter application.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set up Bloc observer for state management.
  Bloc.observer = MyBlocObserver();

  // Initialize dependency injection and Hive for local storage.
  setupServise();
  await HiveService.initHive();

  // Ensure screen size is set for responsive layouts.
  await ScreenUtil.ensureScreenSize();

  // Determine initial route based on cached login/onboarding status.
  await _setInitialRoute();

  // Initialize Supabase for backend services.
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);

  // Set custom error widget.
  ErrorWidget.builder =
      (FlutterErrorDetails details) => ModernErrorScreen(errorDetails: details);

  // Run the app with DevicePreview enabled.
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const AuvnetAssessmentApp(),
    ),
  );
}

/// Determines the initial route based on login and onboarding status.
Future<void> _setInitialRoute() async {
  String? userId = await getIt<CacheHelper>().getString(Constants.keyLogin);
  bool? onboarded = await getIt<CacheHelper>().getBool(Constants.keyOnbording);

  if (!userId.isNullOrEmpty() == true) {
    isLoggedInUser = StringRoute.home;
  } else if (onboarded == true) {
    isLoggedInUser = StringRoute.signIn;
  } else {
    isLoggedInUser = StringRoute.onBoarding;
  }
}
