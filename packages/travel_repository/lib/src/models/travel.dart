//import 'package:equatable/equatable.dart';

import '../../travel_repository.dart';

class Travel {
  final String travelId;
  final String name;
  final String picture;
  final String journey;
  final String date;
  final String departureDate;
  final String price;
  final String description;

  Travel(
      {required this.travelId,
      required this.name,
      required this.picture,
      required this.journey,
      required this.date,
      required this.departureDate,
      required this.price,
      required this.description});

  TravelEntity toEntity() {
    return TravelEntity(
        travelId: travelId,
        name: name,
        picture: picture,
        journey: journey,
        date: date,
        departureDate: departureDate,
        price: price,
        description: description);
  }

  static Travel formEntity(TravelEntity entity) {
    return Travel(
        travelId: entity.travelId,
        name: entity.name,
        picture: entity.picture,
        journey: entity.journey,
        date: entity.date,
        departureDate: entity.departureDate,
        price: entity.price,
        description: entity.description);
  }
}
