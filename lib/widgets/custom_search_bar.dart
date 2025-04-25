import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  final bool enabled;
  final bool autofocus;
  final VoidCallback? onTap;
  const CustomSearchBar({
    super.key,
    required this.enabled,
    required this.autofocus,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 48.h,
        child: TextField(
          autofocus: autofocus,
          cursorColor: Colors.black,
          enabled: enabled,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                width: 1.2.w,
                color: Colors.black,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(width: 1.2.w),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                width: 1.2.w,
                color: Colors.black,
              ),
            ),
            prefixIcon: Icon(Icons.search, color: Colors.black),
            hintText: 'Search',
          ),
        ),
      ),
    );
  }
}
