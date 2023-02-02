import 'package:assesment_project/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

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
                  // tabController.index == 0
                  //     ? Image.asset(
                  //         "assets/icons/tab_bare/home.png",
                  //       )
                  //     : Image.asset(
                  //         "assets/icons/tab_bare/watch.png",
                  //       ),

                  Image.asset(homeImage),
                  // Icon(
                  //   Icons.location_on,
                  //   color: Colors.green,
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
                  // Icon(Icons.message_rounded,),
                  Image.asset(discoverImage),
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
                  Image.asset(watchImage),
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
                  Image.asset(inboxImage),
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
                  Image.asset(profileImage),
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
