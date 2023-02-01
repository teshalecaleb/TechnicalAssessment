import 'package:assesment_project/pages/home/playlist_card.dart';
import 'package:assesment_project/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'homescreen_tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.h,
        // toolbarHeight: 0.h,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //color: Colors.green,
              //height: 48.h,

              width: 345.w,
              margin: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Text(
                "Trending Playlists",
                style: AppTheme.header.copyWith(
                  foreground: Paint()
                    ..shader = const LinearGradient(colors: <Color>[
                      AppTheme.headerprimaryColor,
                      AppTheme.headersecondaryColor
                    ]).createShader(
                      Rect.fromLTRB(0.0.w, 100.w, 300.w, 100.w),
                    ),
                ),
              ),
            ),

            PlayListCard(),
            PlayListCard(),
            Center(
              child: Image.asset("assets/images/verification.png"),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: SizedBox(
                  width: 300.w,
                  child: Text(
                    'Check back soon for new clips and creator content.',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: AppTheme.discordTitle.copyWith(
                      color: AppTheme.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 40.h),
              child: Center(
                child: Text(
                  'In the meantime learn more.',
                  style: AppTheme.discordSubtitle.copyWith(
                    color: AppTheme.subTitleColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.w, left: 15.w, bottom: 35.h),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(56.r),
                  ),
                  gradient: LinearGradient(
                    colors: [AppTheme.cardDetailColor, AppTheme.buttonColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // onSurface: Colors.transparent,
                    // onPrimary: Colors.transparent,
                    side: BorderSide(
                      color: Colors.transparent,
                      width: 0.5.w,
                    ),
                    backgroundColor: Colors.transparent,
                    // primary: Colors.transparent,
                    elevation: 0.h,
                    // disabledBackgroundColor: Colors.transparent,
                    // disabledForegroundColor: Colors.transparent,
                    // foregroundColor: Colors.transparent,
                    // surfaceTintColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    //backgroundColor: AppTheme.buttonColor,
                    // shape: RoundedRectangleBorder(
                    //   side: BorderSide(
                    //     width: 0.5.w,
                    //     color: Colors.transparent,
                    //   ),
                    //   borderRadius: BorderRadius.all(
                    //     Radius.circular(56.r),
                    //   ),
                    // ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Tap to Learn More',
                        style: AppTheme.buttonText.copyWith(
                          color: AppTheme.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // SizedBox(
            //   height: 34.h,
            // ),
          ],
        ),
      ),
    );
  }
}
