import 'package:dio/dio.dart';
import 'package:trendio/models/article_model.dart';

class NewsServices {
  final dio = Dio();
  final String baseUrl = 'https://newsdata.io/api/1/latest';
  final String apiKey =
      'pub_78058c43eaba119311ea385aa5d652cb68133';

  Future<Map<String, dynamic>> getTrendingNews({
    String? nextPage,
  }) async {
    final Response response = await dio.get(
      baseUrl,
      queryParameters: {
        'apiKey': apiKey,
        if (nextPage != null) 'page': nextPage,
      },
    );
    List<ArticleModel> articles =
        (response.data['results'] as List)
            .map((e) => ArticleModel.formJson(e))
            .toList();
    final String next = response.data['nextPage'];
    return {'articles': articles, 'nextPage': next};
  }
}
