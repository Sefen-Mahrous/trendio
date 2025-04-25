import 'package:trendio/models/article_model.dart';

abstract class TrendioStates {}

class InitiaDatalState extends TrendioStates {}

class LoudingDataState extends TrendioStates {}

class SuccessDataState extends TrendioStates {
  final List<ArticleModel> articles;

  SuccessDataState({required this.articles});
}

class FailerDataState extends TrendioStates {}
