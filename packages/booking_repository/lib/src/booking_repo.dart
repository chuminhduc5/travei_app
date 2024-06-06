import 'models/models.dart';

abstract class BookingRepository{
  Future<Booking> createBooking(Booking booking);

  Future<List<Booking>> getBooking();
}