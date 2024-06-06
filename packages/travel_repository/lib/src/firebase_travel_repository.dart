import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_repository/src/travel_repo.dart';

import '../travel_repository.dart';

class FirebaseTravelRepository implements TravelRepository{
  final travelCollection = FirebaseFirestore.instance.collection('travels');

  Future<List<Travel>> getTravel() async {
    try {
      log('Starting getTravel');
      return await travelCollection
          .get()
          .then((value) =>
          value.docs.map((e) =>
              Travel.formEntity(TravelEntity.fromDocument(e.data()))
          ).toList());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<List<Travel>> searchTravel(String query) async{
    try {
      log('Starting searchTravel with query: $query');
      final result = await travelCollection
          .where('name', isGreaterThanOrEqualTo: query)
          .where('name', isLessThanOrEqualTo: query + '\uf8ff')
          .get();
      return result.docs.map((doc) => Travel.formEntity(TravelEntity.fromDocument(doc.data()))).toList();
    } catch (e){
      log(e.toString());
      rethrow;
    }
  }



}
