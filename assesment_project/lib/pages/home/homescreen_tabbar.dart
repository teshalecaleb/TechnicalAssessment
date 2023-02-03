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
  String profileImage = "assets/icons/tab_bare/profile.png";

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: TabBar(
        indicatorColor: Colors.black,
        labelColor: AppTheme.viewselectedColor,
        unselectedLabelColor: AppTheme.viewUnselectedColor,
        controller: tabController,
        tabs: [
          Tab(
            child: SizedBox(
              height: 49.h,
              width: 72.w,
              child: Column(
                children: [
                  Image.asset(homeImage),
                  Text(
                    "Home",
                    style: AppTheme.iconText,
                    overflow: TextOverflow.visible,
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
                  Text(
                    "Discover",
                    style: AppTheme.iconText,
                    softWrap: false,
                    overflow: TextOverflow.visible,
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
                  Text(
                    "Watch",
                    style: AppTheme.iconText,
                    overflow: TextOverflow.visible,
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
                  Text(
                    "Inbox",
                    style: AppTheme.iconText,
                    overflow: TextOverflow.visible,
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
                  Text(
                    "Profile",
                    style: AppTheme.iconText,
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
