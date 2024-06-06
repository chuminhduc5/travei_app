import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:news_repository/news_repository.dart';


class FirebaseNewsRepository implements NewsRepository {
  final newsCollection = FirebaseFirestore.instance.collection('news');

  @override
  Future<List<News>> getNews() async {
    log('Starting getNews');
    try {
      return await newsCollection
          .get()
          .then((value) =>
          value.docs.map((e) =>
              News.fromEntity(NewsEntity.fromDocument(e.data()))
          ).toList());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}

