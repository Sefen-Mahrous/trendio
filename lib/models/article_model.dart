class ArticleModel {
  final String? articleUrl;
  final String? imageUrl;
  final String? title;
  final String? description;
  final String? sourceLogo;
  final String? sourceName;
  final String? articleDate;

  ArticleModel({
    required this.articleUrl,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.sourceLogo,
    required this.sourceName,
    required this.articleDate,
  });

  factory ArticleModel.formJson(josn) {
    return ArticleModel(
      articleUrl: josn['link'],
      imageUrl: josn['image_url'],
      title: josn['title'],
      description: josn['description'],
      sourceLogo: josn['source_icon'],
      sourceName: josn['source_name'],
      articleDate: josn['pubDate'],
    );
  }
}
