import 'package:flutter/material.dart';
import 'package:trendio/widgets/block_widget.dart';
import 'package:trendio/widgets/category_card_list.dart';

class CategoryCardBlock extends StatelessWidget {
  const CategoryCardBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return BlockWidget(
      showSeeAllButton: false,
      sectionTitle: 'Categories',
      widget: CategoryCardList(),
    );
  }
}
