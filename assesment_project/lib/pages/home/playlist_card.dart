import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayListCard extends StatelessWidget {
  final String? cardTitle;
  final String? cardDetail;
  const PlayListCard({
    super.key,
    this.cardDetail,
    this.cardTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 32.h),
      color: Colors.transparent,
      shadowColor: Color(0xff504c57),
      surfaceTintColor: Color(0xfff28262C33),
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
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 12.h,
          left: 12.w,
          right: 12.w,
        ),
        //width: double.maxFinite,

        // color: Colors.green,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(32.r),
        //   gradient: LinearGradient(
        //       colors: [Color(0x28262C33), Colors.green],
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       stops: [0.5, 0.5]),
        // ),
        //width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   color: Colors.green,
            //   height: 288.h,
            //   //width: 321.w,
            //   width: double.infinity,
            //   margin: EdgeInsets.only(top: 12.h, left: 12.w, right: 12.w),
            //   child:
            Image.asset(
              'assets/images/cards/card1.png',
              width: 321.w,
              height: 288.h,
            ),
            // ),
            Row(
              children: [
                //Text("data"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
