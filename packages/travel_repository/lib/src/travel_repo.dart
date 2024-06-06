import '../travel_repository.dart';

abstract class TravelRepository{
  Future<List<Travel>> getTravel();
}