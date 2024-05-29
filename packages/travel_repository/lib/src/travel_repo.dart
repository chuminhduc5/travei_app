import 'package:travel_repository/src/models/models.dart';

abstract class TravelRepository{
  Future<List<Travel>> getTravel();
}