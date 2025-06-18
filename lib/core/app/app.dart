import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/constants/const.dart';

import '../Router/route.dart';
import '../style/theme/app_theme.dart';

class AuvnetAssessmentApp extends StatelessWidget {
  const AuvnetAssessmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: isLoggedInUser,
      ),
    );
  }
}
