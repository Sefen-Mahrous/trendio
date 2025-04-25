import 'package:flutter/material.dart';
import 'package:trendio/widgets/custom_search_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchBar(autofocus: true, enabled: true),
      ],
    );
  }
}
