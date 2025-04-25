import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendio/widgets/see_all_button.dart';

class BlockWidget extends StatelessWidget {
  final VoidCallback? seeAllOnTap;
  final String sectionTitle;
  final Widget widget;
  final bool showSeeAllButton;
  const BlockWidget({
    super.key,
    required this.sectionTitle,
    required this.widget,
    required this.showSeeAllButton,
    this.seeAllOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.r),
      child: Column(
        children: [
          //block header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //title
              Text(
                sectionTitle,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //seeAll button
              if (showSeeAllButton)
                SeeAllButton(onTap: seeAllOnTap),
            ],
          ),
          SizedBox(height: 8.h),
          //the blockBody
          widget,
        ],
      ),
    );
  }
}
