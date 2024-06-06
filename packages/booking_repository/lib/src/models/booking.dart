import 'package:travel_repository/travel_repository.dart';
import 'package:user_repository/user_repository.dart';

import '../entities/booking_entity.dart';

class Booking {
  String bookId;
  String person;
  String children;
  String baby;
  String total;
  DateTime createAt;
  MyUser myUser;
  Travel travel;

  Booking({
    required this.bookId,
    required this.person,
    required this.children,
    required this.baby,
    required this.total,
    required this.createAt,
    required this.myUser,
    required this.travel});

  static final empty = Booking(
      bookId: '',
      person: '',
      children: '',
      baby: '',
      total: '',
      createAt: DateTime.now(),
      myUser: MyUser.empty,
      travel: Travel.empty,
  );

  Booking copyWith(
      {String? bookId, String? person, String? children, String? baby, String? total, DateTime? createAt, MyUser? myUser, Travel? travel}){
    return Booking(
        bookId: bookId ?? this.bookId,
        person: person ?? this.person,
        children: children ?? this.children,
        baby: baby ?? this.baby,
        total: total ?? this.total,
        createAt: createAt ?? this.createAt,
        myUser: myUser ?? this.myUser,
        travel: travel ?? this.travel
    );
  }

  bool get isEmpty => this == Booking.empty;

  bool get isNotEmpty => this != Booking.empty;


  BookingEntity toEntity(){
    return BookingEntity(
        bookId: bookId,
        person: person,
        children: children,
        baby: baby,
        total: total,
        createAt: createAt,
        myUser: myUser,
        travel: travel
    );
  }

  static Booking formEntity(BookingEntity entity){
    return Booking(
        bookId: entity.bookId,
        person: entity.person,
        children: entity.children,
        baby: entity.baby,
        total: entity.total,
        createAt: entity.createAt,
        myUser: entity.myUser,
        travel: entity.travel
    );
  }

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
