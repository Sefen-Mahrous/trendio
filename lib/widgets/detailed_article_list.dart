import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendio/widgets/detailed_article_card.dart';

class DetailedArticleList extends StatelessWidget {
  const DetailedArticleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return DetailedArticleCard();
        },
        separatorBuilder:
            (context, index) => SizedBox(height: 10.h),
      ),
    );
  }
}
