import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendio/views/explore_view.dart';
import 'package:trendio/views/home_view.dart';
import 'package:trendio/views/search_view.dart';
import 'package:trendio/widgets/custom_bottom_navigation_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  late List<Widget> views;
  @override
  void initState() {
    super.initState();
    views = [
      HomeView(
        ontap: () {
          setState(() {
            currentIndex = 1;
          });
        },
      ),
      SearchView(),
      ExploreView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.r,
            vertical: 12.r,
          ),
          child: views[currentIndex],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          ontap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
        ),
      ),
    );
  }
}
