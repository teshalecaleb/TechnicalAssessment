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
      //shadowColor: Colors.white,
      elevation: 0.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.r),
        side: BorderSide(
          width: 1.w,
          color: Color(0xff645f6d),
        ),
      ),
      child: Container(
        height: 403.h,
        //width: double.maxFinite,

        //color: Colors.green,
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
            Container(
              height: 288.h,
              width: 321.w,
              margin: EdgeInsets.only(top: 12.h, left: 12.w, right: 12.w),
              child: Image.asset("assets/images/cards/card1.png"),
            ),
            Row(
              children: [
                // Text("data"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
