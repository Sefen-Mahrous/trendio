import 'package:flutter/material.dart';
import 'package:trendio/models/article_model.dart';
import 'package:trendio/services/news_services.dart';
import 'package:trendio/widgets/article_card.dart';

class ArticleCardList extends StatefulWidget {
  const ArticleCardList({super.key});

  @override
  State<ArticleCardList> createState() =>
      _ArticleCardListState();
}

class _ArticleCardListState extends State<ArticleCardList> {
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
          isLoading == false &&
          nextPage != null) {
        loadPosts();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: articles.length + (isLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == articles.length) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ArticleCard(articleModel: articles[index]);
        }
      },
    );
  }
}
