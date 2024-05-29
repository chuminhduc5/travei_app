import 'package:equatable/equatable.dart';

class TravelEntity extends Equatable {
  String travelId;
  String name;
  String picture;
  String journey;
  String date;
  String departureDate;
  String price;
  String description;

  TravelEntity(
      {required this.travelId,
      required this.name,
      required this.picture,
        required this.journey,
      required this.date,
      required this.departureDate,
      required this.price,
      required this.description});

  Map<String, Object?> toDocument(){
    return{
      'travelId': travelId,
      'name': name,
      'picture' : picture,
      'journey': journey,
      'date': date,
      'departureDate': departureDate,
      'price': price,
      'description': description,
    };
  }

  static TravelEntity fromDocument(Map<String, dynamic> doc){
    return TravelEntity(
        travelId: doc['travelId'] as String,
        name: doc['name'] as String,
        picture: doc['picture'] as String,
        journey: doc['journey'] as String,
        date: doc['date'] as String,
        departureDate: doc['departureDate'] as String,
        price: doc['price'] as String,
        description: doc['description']
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [travelId, name, picture, journey, date, departureDate, price, description];

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

