import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendio/widgets/article_card_list.dart';
import 'package:trendio/widgets/block_widget.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.r,
            vertical: 12.r,
          ),
          child: BlockWidget(
            sectionTitle: 'Categories',
            widget: Expanded(child: ArticleCardList()),
            showSeeAllButton: false,
          ),
        ),
      ),
    );
  }
}
