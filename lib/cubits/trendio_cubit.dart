import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendio/cubits/trendio_states.dart';
import 'package:trendio/models/article_model.dart';
import 'package:trendio/services/news_services.dart';

class TrendioCubit extends Cubit<TrendioStates> {
  TrendioCubit() : super(InitiaDatalState());
  List<ArticleModel>? articles;
  String? nextPage;
  void getNews() async {
    emit(LoudingDataState());
    try {
      var data = await NewsServices().getTrendingNews(
        nextPage: nextPage,
      );
      articles = data['articles'];
      nextPage = data['nextPage'];
      emit(SuccessDataState(articles: articles!));
    } catch (e) {
      emit(FailerDataState());
    }
  }
}
