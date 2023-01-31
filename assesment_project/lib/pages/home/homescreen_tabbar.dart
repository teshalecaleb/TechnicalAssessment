import 'package:assesment_project/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'homescreen.dart';

class HomeScreenTabbar extends StatefulWidget {
  const HomeScreenTabbar({super.key});

  @override
  State<HomeScreenTabbar> createState() => _HomeScreenTabbarState();
}

class _HomeScreenTabbarState extends State<HomeScreenTabbar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: TabBar(
        // labelColor: Colors.transparent,
        indicatorColor: Colors.black,
        labelColor: AppTheme.viewselectedColor,
        unselectedLabelColor: AppTheme.viewUnselectedColor,
        controller: tabController,
        tabs: [
          Tab(
            child: Container(
              //color: Colors.transparent,
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  Text(
                    "Home",
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              //color: Colors.transparent,
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  Text(
                    "Discover",
                    softWrap: false,
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              //color: Colors.transparent,
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  Text(
                    "Watch",
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              //color: Colors.transparent,
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  Text(
                    "Inbox",
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              // color: Colors.transparent,
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  Text(
                    "Profile",
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen()
        ],
      ),
    );
  }
}
