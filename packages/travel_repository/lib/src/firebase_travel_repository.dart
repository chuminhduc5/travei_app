import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_repository/src/travel_repo.dart';

import '../travel_repository.dart';

class FirebaseTravelRepository implements TravelRepository{
  final travelCollection = FirebaseFirestore.instance.collection('travels');

  Future<List<Travel>> getTravel() async{
    try {
      return await travelCollection.get().then((value) => value.docs.map((e) =>
          Travel.formEntity(TravelEntity.fromDocument(e.data()))
      ).toList());
    }catch (e) {
      log(e.toString() as num);
      rethrow;
    }
  }
}