import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendio/constants.dart';

class ViewTitle extends StatelessWidget {
  final String title;
  const ViewTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.r),
      child: Text(
        title,
        style: TextStyle(
          color: kPrimaryColor,
          fontSize: 28.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
