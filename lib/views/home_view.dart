import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendio/widgets/sliver_article_card_list.dart';
import 'package:trendio/widgets/block_category_card.dart';
import 'package:trendio/widgets/custom_search_bar.dart';
import 'package:trendio/widgets/block_detailed_article.dart';
import 'package:trendio/widgets/view_title.dart';

class HomeView extends StatelessWidget {
  final VoidCallback ontap;
  const HomeView({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        //appBar -> appName
        SliverAppBar(
          pinned: true,
          flexibleSpace: Container(
            color: Colors.white,
            alignment: Alignment.topLeft,
            child: ViewTitle(title: 'Trendio'),
          ),
        ),
        //search
        SliverToBoxAdapter(
          child: CustomSearchBar(
            onTap: ontap,
            autofocus: false,
            enabled: false,
          ),
        ),
        //detailed article
        SliverToBoxAdapter(child: DetailedArticleBlock()),
        //categories
        SliverToBoxAdapter(child: CategoryCardBlock()),
        SliverToBoxAdapter(child: SizedBox(height: 10.h)),
        //last list
        SliverArticleCardList(),
      ],
    );
  }
}
