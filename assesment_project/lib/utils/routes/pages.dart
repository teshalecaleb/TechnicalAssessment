import 'package:assesment_project/pages/home/homescreen_tabbar.dart';
import 'package:assesment_project/utils/routes/routes.dart';
import 'package:get/get.dart';

import '../../pages/home/homescreen.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HomeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.HomeScreenTabbar,
      page: () => const HomeScreenTabbar(),
    ),
  ];
}
