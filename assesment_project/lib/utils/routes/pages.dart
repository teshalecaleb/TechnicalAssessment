import 'package:assesment_project/utils/routes/routes.dart';
import 'package:get/get.dart';

import '../../pages/home/homescreen.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
    ),
  ];
}
