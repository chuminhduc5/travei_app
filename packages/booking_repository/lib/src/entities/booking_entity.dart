import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_repository/travel_repository.dart';
import 'package:user_repository/user_repository.dart';

class BookingEntity {
  String bookId;
  String person;
  String children;
  String baby;
  String total;
  DateTime createAt;
  MyUser myUser;
  Travel travel;

  BookingEntity({
    required this.bookId,
    required this.person,
    required this.children,
    required this.baby,
    required this.total,
    required this.createAt,
    required this.myUser,
    required this.travel});

  Map<String, Object?> toDocument(){
    return {
    'bookId': bookId,
    'person': person,
    'children': children,
    'baby' : baby,
    'total': total,
    'createAt': createAt,
    'myUser': myUser.toEntity().toDocument(),
    'travel': travel.toEntity().toDocument(),
    };
  }

  static BookingEntity fromDocument(Map<String, dynamic> doc){
    return BookingEntity(
      bookId: doc['bookId'] as String,
      person: doc['person'] as String,
      children: doc['children'] as String,
      baby: doc['baby'] as String,
      total: doc['total'] as String,
      createAt: (doc['createAt'] as Timestamp).toDate(),
      myUser: MyUser.formEntity(MyUserEntity.fromDocument(['myUser'] as Map<String, dynamic>)),
      travel: Travel.formEntity(TravelEntity.fromDocument(['travel'] as Map<String, dynamic>))
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [bookId, person, children, baby, total, createAt, myUser, travel];

  @override
  String toString() {
    return '''Booking: {
      bookId: $bookId,
        person: $person,
        children: $children,
        baby: $baby,
        total: $total,
        createAt: $createAt,
        myUser: $myUser,
        travel: $travel
    }''';

  }
}