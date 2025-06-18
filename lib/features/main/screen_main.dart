import 'package:flutter/material.dart';

// import '../Qiez/view/exam_overview_page.dart';
import 'widget/custom_bottom_navigation_bar.dart';
import 'widget/main_view_body.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (index) {
          currentViewIndex = index;
          setState(() {});
        },
      ),
      body: MainViewBody(currentViewIndex: currentViewIndex),
    );
  }
}
