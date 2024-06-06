import '../entities/news_entity.dart';

class News {
  final String newsId;
  final String newsName;
  final String newsPicture;
  final String newsContent;

  News(
      {required this.newsId,
      required this.newsName,
      required this.newsPicture,
      required this.newsContent});

  NewsEntity toEntity() {
    return NewsEntity(
        newsId: newsId,
        newsName: newsName,
        newsPicture: newsPicture,
        newsContent: newsContent);
  }

  static News fromEntity(NewsEntity entity){
    return News(
      newsId: entity.newsId,
      newsName: entity.newsName,
      newsPicture: entity.newsPicture,
      newsContent: entity.newsContent
    );
  }
}
