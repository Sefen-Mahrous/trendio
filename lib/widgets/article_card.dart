import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendio/models/article_model.dart';

class ArticleCard extends StatelessWidget {
  final ArticleModel articleModel;
  const ArticleCard({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //article source logo and name of source
        Row(
          children: [
            // Logo Image
            SizedBox(
              width: 25.w,
              height: 25.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(99.r),
                child:
                    articleModel.sourceLogo?.isNotEmpty == true
                        ? CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl: articleModel.sourceLogo!,
                          placeholder:
                              (context, url) => Center(
                                child:
                                    CircularProgressIndicator(),
                              ),
                          errorWidget:
                              (context, url, error) =>
                                  Image.asset(
                                    'assets/defult.jpg',
                                  ),
                        )
                        : Image.asset(
                          'assets/defult.jpg',

                          fit: BoxFit.fill,
                        ),
              ),
            ),
            SizedBox(width: 4.w),
            FittedBox(
              child: Text(
                articleModel.sourceName ?? 'null',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        //artile Title and Image
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //article Title
            SizedBox(
              width: 220.w,
              child: Text(
                articleModel.title ?? 'null',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            //article image
            SizedBox(
              width: 120.w,
              height: 75.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.r),
                child:
                    articleModel.imageUrl?.isNotEmpty == true
                        ? CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl: articleModel.imageUrl!,
                          placeholder:
                              (context, url) => Center(
                                child:
                                    CircularProgressIndicator(),
                              ),
                          errorWidget:
                              (context, url, error) =>
                                  Image.asset(
                                    'assets/defult.jpg',
                                  ),
                        )
                        : Image.asset(
                          'assets/defult.jpg',
                          fit: BoxFit.fill,
                        ),
              ),
            ),
          ],
        ),
        //article date
        Row(
          children: [
            Icon(Icons.calendar_month),
            Text('1 day age'),
          ],
        ),
        //grey row divider
        Divider(color: Colors.grey),
      ],
    );
  }
}
