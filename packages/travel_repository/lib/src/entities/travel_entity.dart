//import 'package:equatable/equatable.dart';

class TravelEntity {
  final String travelId;
  final String name;
  final String picture;
  final String journey;
  final String date;
  final String departureDate;
  final String price;
  final String description;

  TravelEntity(
      {required this.travelId,
      required this.name,
      required this.picture,
      required this.journey,
      required this.date,
      required this.departureDate,
      required this.price,
      required this.description});

  Map<String, Object?> toDocument() {
    return {
      'travelId': travelId,
      'name': name,
      'picture': picture,
      'journey': journey,
      'date': date,
      'departureDate': departureDate,
      'price': price,
      'description': description,
    };
  }

  static TravelEntity fromDocument(Map<String, dynamic> doc) {
    return TravelEntity(
        travelId: doc['travelId'] ?? '',
        name: doc['name'] ?? '',
        picture: doc['picture'] ?? '',
        journey: doc['journey'] ?? '',
        date: doc['date'] ?? '',
        departureDate: doc['departureDate'] ?? '',
        price: doc['price'] ?? '',
        description: doc['description'] ?? '');
  }

  @override
  String toString() {
    // TODO: implement toString
    return '''TravelEntity: {
    travelId: $travelId,
    name: $name,
    picture: $picture,
    journey: $journey,
    date: $date,
    departureDate: $departureDate,
    price: $date,
    description: $description
  }''';
  }
}
