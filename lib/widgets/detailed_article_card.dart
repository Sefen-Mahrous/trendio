import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailedArticleCard extends StatelessWidget {
  const DetailedArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      width: 404.w,
      height: 310.h,
      child: Padding(
        padding: EdgeInsets.all(8.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image
            SizedBox(
              width: 388.w,
              height: 183.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.r),
                child: Image.asset(
                  'assets/article_1.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            //Source Section
            Row(
              children: [
                // Logo Image
                SizedBox(
                  width: 25.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(99.r),
                    child: Image.asset('assets/BBC.jpg'),
                  ),
                ),
                SizedBox(width: 4.w),
                FittedBox(
                  child: Text(
                    'BBC',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            //Title
            Text(
              'Russian warship: Moskva sinks in Black Sea spam text',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            //Description
            Text(
              'Ukraine\'s President Zelensky to BBC: Blood money being paid for Russian President Zelensky to BBC: Blood money being paid for Ry to BBC: Blood money being paid for Russian President Zelensky to BBC: Blood money being paid for Russian',
              style: TextStyle(
                fontSize: 11.sp,
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
            ),
            Spacer(),
            //Date
            Row(
              children: [
                Icon(Icons.calendar_month, size: 16.sp),
                SizedBox(width: 4.w),
                Text(
                  '30/12/2025',
                  style: TextStyle(fontSize: 12.sp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
