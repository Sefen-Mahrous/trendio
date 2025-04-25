import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendio/views/category_view.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView();
            },
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(120.w, 30.h),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: Colors.black),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: Text('Health', style: TextStyle(fontSize: 16.sp)),
    );
  }
}
