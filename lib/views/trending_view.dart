import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendio/widgets/article_card_list.dart';
import 'package:trendio/widgets/block_widget.dart';

class TrendingView extends StatefulWidget {
  const TrendingView({super.key});

  @override
  State<TrendingView> createState() => _TrendingViewState();
}

class _TrendingViewState extends State<TrendingView> {
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
            sectionTitle: 'Trending',
            widget: Expanded(child: ArticleCardList()),
            showSeeAllButton: false,
          ),
        ),
      ),
    );
  }
}
