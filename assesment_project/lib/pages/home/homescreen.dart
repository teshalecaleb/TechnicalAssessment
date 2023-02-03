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
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 345.w,
              margin: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Text(
                "Trending Playlists",
                style: AppTheme.header,
              ),
            ),

            PlayListCard(
              imagePath: Image.asset(
                'assets/images/cards/card1.png',
                width: 321.w,
                fit: BoxFit.fitWidth,
                height: 288.h,
              ),
            ),
            PlayListCard(
              imagePath: Image.asset(
                'assets/images/cards/card2.png',
                width: 321.w,
                fit: BoxFit.fitWidth,
                height: 288.h,
              ),
            ),
            PlayListCard(
              imagePath: Image.asset(
                'assets/images/cards/card3.png',
                width: 321.w,
                fit: BoxFit.fitWidth,
                height: 288.h,
              ),
            ),
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
                  gradient: const LinearGradient(
                    colors: [AppTheme.cardDetailColor, AppTheme.buttonColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.transparent,
                      width: 0.5.w,
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0.h,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          "assets/icons/tab_bare/home_selected_icon.png"),
                      SizedBox(
                        width: 16.11.w,
                      ),
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
