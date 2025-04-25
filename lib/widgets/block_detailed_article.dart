import 'package:flutter/material.dart';
import 'package:trendio/views/trending_view.dart';
import 'package:trendio/widgets/block_widget.dart';
import 'package:trendio/widgets/detailed_article_card.dart';

class DetailedArticleBlock extends StatelessWidget {
  const DetailedArticleBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return BlockWidget(
      seeAllOnTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return TrendingView();
            },
          ),
        );
      },
      sectionTitle: 'Trending',
      widget: DetailedArticleCard(),
      showSeeAllButton: true,
    );
  }
}
