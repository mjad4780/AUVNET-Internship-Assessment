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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  setupServise();
  await HiveService.initHive();

  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  ErrorWidget.builder =
      (FlutterErrorDetails details) => ModernErrorScreen(errorDetails: details);

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const AuvnetAssessmentApp(),
    ),
  );
}

checkIfLoggedInUser() async {
  String? userId = await getIt<CacheHelper>().getString(Constants.keyLogin);

  bool? user = await getIt<CacheHelper>().getBool(Constants.keyOnbording);
  if (!userId.isNullOrEmpty() == true) {
    isLoggedInUser = StringRoute.home;
  } else if (user == true) {
    isLoggedInUser = StringRoute.home;
  } else {
    isLoggedInUser = StringRoute.onBoarding;
  }
}

// SmoothPageIndicator(
//    controller: controller,
//    count:  6,
//    axisDirection: Axis.vertical,
//    effect:  SlideEffect(
//       spacing:  8.0,
//       radius:  4.0,
//       dotWidth:  24.0,
//       dotHeight:  16.0,
//       paintStyle:  PaintingStyle.stroke,
//       strokeWidth:  1.5,
//       dotColor:  Colors.grey,
//       activeDotColor:  Colors.indigo
//   ),
// )
