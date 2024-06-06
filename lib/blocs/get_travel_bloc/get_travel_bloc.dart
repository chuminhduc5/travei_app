import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travel_repository/travel_repository.dart';

part 'get_travel_event.dart';
part 'get_travel_state.dart';

class GetTravelBloc extends Bloc<GetTravelEvent, GetTravelState> {
  TravelRepository _travelRepository;

  GetTravelBloc(this._travelRepository) : super(GetTravelInitial()) {
    on<GetTravel>((event, emit) async{
      emit(GetTravelLoading());
      try {
        List<Travel> travels = await _travelRepository.getTravel();
        emit(GetTravelSuccess(travels));
      } catch (e){
        emit(GetTravelFailure());
      }
    });
  }
}
