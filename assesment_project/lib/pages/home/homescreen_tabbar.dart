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
            child: SizedBox(
              //color: Colors.transparent,
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Image.asset("assets/icons/tab_bare/home.png"),
                  // Icon(
                  //   Icons.location_on,
                  // ),
                  const Text(
                    "Home",
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              //color: Colors.transparent,
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Image.asset("assets/icons/tab_bare/discover.png"),
                  const Text(
                    "Discover",
                    softWrap: false,
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              //color: Colors.transparent,
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Image.asset("assets/icons/tab_bare/watch.png"),
                  const Text(
                    "Watch",
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              //color: Colors.transparent,
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Image.asset("assets/icons/tab_bare/inbox.png"),
                  const Text(
                    "Inbox",
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              // color: Colors.transparent,
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Image.asset("assets/icons/tab_bare/profile.png"),
                  const Text(
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
        children: const [
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
