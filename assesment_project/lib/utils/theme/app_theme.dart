import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();
  //static const Color primaryColor = Color(0xfff2bc3d);
  static const Color transparentColor = Colors.transparent;
  static const Color backgroundColor = Color(0xff000000);
  static const Color headerprimaryColor = Color(0xfff2bc3d);
  static const Color headersecondaryColor = Color(0xffd93636);
  static const Color whiteColor = Color(0xffffffff);
  static const Color cardDetailColor = Color(0xfff2bc3d);
  static const Color progressIndicatorSelectedColor = Color(0xfff2bc3d);
  static const Color viewUnselectedColor = Color(0xff504c57);
  static const Color viewselectedColor = Color(0xfff2bc3d);
  static const Color tabbarIconColor = Color(0xff3c3941);
  static const Color subTitleColor = Color(0xffa19daa);
  static const Color buttonColor = Color(0xff392904);
  static const Color iconTextColor = Color(0xff8C8797);

  static ThemeData themeData = ThemeData(
    // primaryColor: primaryColor,
    // colorScheme: ThemeData().colorScheme.copyWith(
    //       primary: primaryColor,
    //       secondary:
    //     ),
    scaffoldBackgroundColor: backgroundColor,
  );
  static TextStyle header = GoogleFonts.openSans(
    fontSize: 41.sp,
    fontWeight: FontWeight.w700,
    foreground: Paint()
      ..shader = const LinearGradient(colors: <Color>[
        AppTheme.headerprimaryColor,
        AppTheme.headersecondaryColor
      ]).createShader(
        Rect.fromLTRB(0.0.w, 100.w, 300.w, 100.w),
      ),
  );
  static TextStyle cardTitle = TextStyle(
    fontFamily: 'Times',
    fontSize: 25.sp,
    color: AppTheme.whiteColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle cardDetail = TextStyle(
    fontFamily: 'Times',
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
  );
  static TextStyle discordTitle = cardTitle.copyWith(
    fontSize: 22.sp,
  );
  static TextStyle discordSubtitle = cardDetail.copyWith();
  static TextStyle buttonText = cardDetail.copyWith(
    fontSize: 17.sp,
  );
  static TextStyle iconText = cardDetail.copyWith();
}
