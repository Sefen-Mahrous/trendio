import 'package:flutter/material.dart';
import 'package:trendio/models/article_model.dart';
import 'package:trendio/services/news_services.dart';
import 'package:trendio/widgets/article_card.dart';

class SliverArticleCardList extends StatefulWidget {
  const SliverArticleCardList({super.key});

  @override
  State<SliverArticleCardList> createState() =>
      _SliverArticleCardListState();
}

class _SliverArticleCardListState
    extends State<SliverArticleCardList> {
  final List<ArticleModel> articles = [];
  String? nextPage;
  bool isLoading = false;
  final ScrollController scrollController = ScrollController();

  Future<void> loadPosts() async {
    setState(() {
      isLoading = true;
    });
    final result = await NewsServices().getTrendingNews(
      nextPage: nextPage,
    );
    setState(() {
      articles.addAll(result['articles']);
      nextPage = result['nextPage'];
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    loadPosts();
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent - 200 &&
          !isLoading &&
          nextPage != null) {
        loadPosts();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        if (index == articles.length) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(child: CircularProgressIndicator()),
          );
        }
        return ArticleCard(articleModel: articles[index]);
      }, childCount: articles.length + (isLoading ? 1 : 0)),
    );
  }
}
