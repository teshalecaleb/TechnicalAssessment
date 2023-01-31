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

            // SizedBox(
            //   height: 34.h,
            // ),
          ],
        ),
      ),
    );
  }
}
