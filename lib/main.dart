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

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingData> onboardingPages = [
    OnboardingData(
      title: "all-in-one delivery",
      description:
          "Order groceries, medicines, and meals delivered straight to your door",
    ),
    OnboardingData(
      title: "User-to-User Delivery",
      description: "Send or receive items from other users quickly and easily",
    ),
    OnboardingData(
      title: "Sales & Discounts",
      description: "Discover exclusive sales and deals every day",
    ),
  ];

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
        child: SafeArea(
          child: Column(
            children: [
              // Status bar area
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Time',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 18,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        SizedBox(width: 2),
                        Container(
                          width: 18,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        SizedBox(width: 2),
                        Container(
                          width: 24,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

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
                      data: onboardingPages[index],
                      currentPage: _currentPage,
                      totalPages: onboardingPages.length,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final OnboardingData data;
  final int currentPage;
  final int totalPages;

  const OnboardingPage({
    super.key,
    required this.data,
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 40),

          // Logo section
          SizedBox(
            width: 200,
            height: 200,
            child: Stack(
              children: [
                // Background circle
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                // Logo
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Number 9 with design
                      Container(
                        child: Stack(
                          children: [
                            Text(
                              '9',
                              style: TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF8B4CDE),
                                height: 0.8,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 15,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE6A85C),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              right: 5,
                              child: Container(
                                width: 25,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE6A85C),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // NAWEL text
                      Text(
                        'NAWEL',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8B4CDE),
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Spacer(),

          // Content section
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  data.title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  data.description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),

                // Get Started Button
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF8B4CDE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Next text
                Text(
                  'next',
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),

                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingData {
  final String title;
  final String description;

  OnboardingData({required this.title, required this.description});
}
