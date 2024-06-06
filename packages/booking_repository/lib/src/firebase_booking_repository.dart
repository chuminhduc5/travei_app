import 'package:booking_repository/booking_repository.dart';
import 'package:booking_repository/src/booking_repo.dart';
import 'package:booking_repository/src/models/booking.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseBookingRepository implements BookingRepository{
  final bookingCollection = FirebaseFirestore.instance.collection('tours');

  @override
  Future<Booking> createBooking(Booking booking) async{
    try {
      final newBookingRef = await bookingCollection.add(booking.toEntity().toDocument());
      final newBookingDoc = await newBookingRef.get();
      return Booking.formEntity(BookingEntity.fromDocument(newBookingDoc.data()!));
    } catch (e) {
      print('Error creating booking: $e');
      throw e;
    }
  }

  @override
  Future<List<Booking>> getBooking() {
    try {
      return bookingCollection
          .get()
          .then((value) => value.docs.map((e) =>
          Booking.formEntity(BookingEntity.fromDocument(e.data()))
      ).toList());
    } catch (e) {
    print(e.toString());
    rethrow;
    }
  }
}
