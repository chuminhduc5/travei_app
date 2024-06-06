class NewsEntity {
  final String newsId;
  final String newsName;
  final String newsPicture;
  final String newsContent;


  NewsEntity(
      {required this.newsId,
      required this.newsName,
      required this.newsPicture,
      required this.newsContent});

  Map<String, Object?> toDocument() {
      return {
        'newsId': newsId,
        'newsName': newsName,
        'newsPicture': newsPicture,
        'newsContent': newsContent,
      };
  }
  static NewsEntity fromDocument(Map<String, dynamic> doc){
    return NewsEntity(
        newsId: doc['newsId'] ,
        newsName: doc['newsName'] ,
        newsPicture: doc['mewsPicture'],
        newsContent: doc['mewsContnet'] ,
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return '''NewEntity:{
      newsId: $newsId,
      newsName: $newsName,
      newsPicturw: $newsPicture,
      newsContent: $newsContent
    }''';
  }
}
