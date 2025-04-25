import 'package:flutter/material.dart';
import 'package:trendio/widgets/block_widget.dart';
import 'package:trendio/widgets/detailed_article_list.dart';

class DetailedArticleListBlock extends StatelessWidget {
  const DetailedArticleListBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return BlockWidget(
      showSeeAllButton: false,
      sectionTitle: 'Popular Topic',
      widget: DetailedArticleList(),
    );
  }
}
