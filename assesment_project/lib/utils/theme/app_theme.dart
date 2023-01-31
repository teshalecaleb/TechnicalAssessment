import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  // ignore: use_full_hex_values_for_flutter_colors
  //static const Color primaryColor = Color(0xfff2bc3d);
  static const Color backgroundColor = Color(0xff000000);
  static const Color headerprimaryColor = Color(0xfff2bc3d);
  static const Color headersecondaryColor = Color(0xffd93636);
  static const Color cardTitleColor = Color(0xffffffff);
  static const Color cardDetailColor = Color(0xfff2bc3d);
  static const Color progressIndicatorSelectedColor = Color(0xfff2bc3d);
  static const Color viewUnselectedColor = Color(0xff504c57);
  static const Color viewselectedColor = Color(0xfff2bc3d);
  static const Color tabbarIconColor = Color(0xff3c3941);

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
  );
  static TextStyle cardTitle = TextStyle(
    fontFamily: 'Times',
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle cardDetail = TextStyle(
    fontFamily: 'Times',
    fontSize: 16.sp,
    fontStyle: FontStyle.italic,
  );
  static TextStyle discordTitle = TextStyle(
    fontFamily: 'Times',
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle discordSubtitle = TextStyle(
    fontFamily: 'Times',
    fontSize: 13.sp,
    fontStyle: FontStyle.italic,
  );
  static TextStyle buttonText = TextStyle(
    fontFamily: 'Times',
    fontSize: 17.sp,
    fontStyle: FontStyle.italic,
  );
  static TextStyle iconText = TextStyle(
    fontFamily: 'Times',
    fontSize: 10.sp,
    fontStyle: FontStyle.italic,
  );
}
