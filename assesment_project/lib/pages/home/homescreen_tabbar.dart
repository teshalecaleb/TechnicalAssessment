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
  String homeImage = "assets/icons/tab_bare/home.png";
  String discoverImage = "assets/icons/tab_bare/discover.png";
  String watchImage = "assets/icons/tab_bare/watch.png";
  String inboxImage = "assets/icons/tab_bare/inbox.png";
  String profileImage = "assets/icons/tab_bare/profile1.png";

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: TabBar(
        // onTap: (value) {
        //   value = tabController.index;
        //   if (value == 0) {
        //     setState(() {
        //       homeImage = "assets/icons/tab_bare/discover.png";
        //     });
        //   }
        //   // if (value == 1) {
        //   //   setState(
        //   //     () {
        //   //       discoverImage = "assets/icons/tab_bare/discover.png";
        //   //     },
        //   //   );
        //   // }
        //   // if (value == 2) {
        //   //   setState(
        //   //     () {
        //   //       watchImage = "assets/icons/tab_bare/discover.png";
        //   //     },
        //   //   );
        //   // }
        //   // if (value == 3) {
        //   //   setState(
        //   //     () {
        //   //       inboxImage = "assets/icons/tab_bare/discover.png";
        //   //     },
        //   //   );
        //   // }
        //   // if (value == 4) {
        //   //   setState(
        //   //     () {
        //   //       profileImage = "assets/icons/tab_bare/discover.png";
        //   //     },
        //   //   );
        //   // }
        // },
        indicatorColor: Colors.black,
        labelColor: AppTheme.viewselectedColor,
        unselectedLabelColor: AppTheme.viewUnselectedColor,
        unselectedLabelStyle:
            AppTheme.iconText.copyWith(color: AppTheme.iconTextColor),
        labelStyle: AppTheme.iconText,
        controller: tabController,

        tabs: [
          Tab(
            child: SizedBox(
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Image.asset(homeImage),
                  const Text(
                    "Home",
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Image.asset(discoverImage),
                  const Text(
                    "Discover",
                    softWrap: false,
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Image.asset(watchImage),
                  const Text(
                    "Watch",
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Image.asset(inboxImage),
                  const Text(
                    "Inbox",
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Image.asset(profileImage),
                  const Text(
                    "Profile",
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
