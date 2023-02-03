import 'package:assesment_project/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/home/progress_indicator.dart';

class PlayListCard extends StatelessWidget {
  final String? cardTitle;
  final String? cardDetail;
  final Image? imagePath;
  const PlayListCard(
      {super.key, this.cardDetail, this.cardTitle, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 32.h),
      color: Colors.transparent,
      shadowColor: const Color(0xff504c57),
      surfaceTintColor: const Color(0x28262C33),
      elevation: 0.2.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.r),
        side: BorderSide(
          width: 1.w,
          color: Colors.black,
        ),
      ),
      child: Container(
        height: 403.h,
        width: double.infinity.w,
        padding: EdgeInsets.only(
          top: 12.h,
          left: 12.w,
          right: 12.w,
        ),
        child: Stack(
          children: [
            imagePath!,
            Positioned(
              top: 250.h,
              left: 220.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromHeight(80.h),
                  backgroundColor: Colors.transparent,
                  elevation: 0.h,
                ),
                onPressed: () {},
                child: Image.asset(
                  'assets/icons/card/play_button.png',
                ),
              ),
            ),
            Positioned(
              top: 300.h,
              left: 15.w,
              child: Text(
                'FGC Playlist',
                style: AppTheme.cardTitle,
              ),
            ),
            Positioned(
              top: 330.h,
              left: 15.w,
              child: Text(
                '+18 New Videos',
                style: AppTheme.cardDetail.copyWith(
                  color: AppTheme.cardDetailColor,
                ),
              ),
            ),
            Positioned(
              top: 330.h,
              right: 15.w,
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/card/show.png',
                    height: 12.h,
                    width: 12.w,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    '0/18',
                    style: AppTheme.cardDetail.copyWith(
                      color: AppTheme.cardDetailColor,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 366.h,
              left: 15.w,
              right: 15.w,
              child: const PlayProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
