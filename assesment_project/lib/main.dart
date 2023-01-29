import 'package:assesment_project/utils/routes/pages.dart';
import 'package:assesment_project/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'utils/theme/app_theme.dart';

void main() {}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          //theme: AppTheme.themeData,
          initialRoute: Routes.homeScreen,
          getPages: AppPages.pages,
        );
      },
    );
  }
}
