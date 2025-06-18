import 'package:flutter/material.dart';

import '../../home/presentation/pages/home_page.dart';

class MainViewBody extends StatefulWidget {
  const MainViewBody({super.key, required this.currentViewIndex});

  final int currentViewIndex;

  @override
  State<MainViewBody> createState() => _MainViewBodyState();
}

class _MainViewBodyState extends State<MainViewBody> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.currentViewIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(MainViewBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentViewIndex != widget.currentViewIndex) {
      _pageController.jumpToPage(widget.currentViewIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        KeepAlivePage(child: HomeScreen()),
        KeepAlivePage(child: Center(child: Text('data'))),
        KeepAlivePage(child: Center(child: Text('data'))),
        KeepAlivePage(child: Center(child: Text('data'))),
        KeepAlivePage(child: Center(child: Text('data'))),
      ],
    );
  }
}

// A widget that keeps its child alive in a PageView or TabBarView.
// This prevents the child widget from being disposed when it is not visible.
class KeepAlivePage extends StatefulWidget {
  const KeepAlivePage({super.key, required this.child});

  final Widget child;

  @override
  KeepAlivePageState createState() => KeepAlivePageState();
}

class KeepAlivePageState extends State<KeepAlivePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}
