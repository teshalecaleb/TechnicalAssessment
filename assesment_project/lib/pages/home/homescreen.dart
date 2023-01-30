import 'package:assesment_project/pages/home/playlist_card.dart';
import 'package:assesment_project/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            // SizedBox(
            //   height: 34.h,
            // ),
          ],
        ),
      ),
    );
  }
}
