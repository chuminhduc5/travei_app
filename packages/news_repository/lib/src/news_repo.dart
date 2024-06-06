import '../news_repository.dart';

abstract class NewsRepository{
  Future<List<News>> getNews();
}