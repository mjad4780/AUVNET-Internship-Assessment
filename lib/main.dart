import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:task/core/get_it/get_it.dart';

import 'package:task/core/helpers/observer.dart';
import 'package:task/core/widget/modern_error_screen.dart';
import 'package:task/key.dart';
import 'package:device_preview/device_preview.dart';
import 'package:task/features/home/presentation/pages/home_page.dart';

import 'core/service/cache/hive_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  setupServise();
  await HiveService.initHive();
  // await getIt<ConnectivityController>().init();

  // await getIt<CacheHelper>().init();

  await ScreenUtil.ensureScreenSize();

  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  ErrorWidget.builder =
      (FlutterErrorDetails details) => ModernErrorScreen(errorDetails: details);

  runApp(DevicePreview(enabled: true, builder: (context) => MyApp()));
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
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NAWEL App',
      // theme: ThemeData(primarySwatch: Colors.purple),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
