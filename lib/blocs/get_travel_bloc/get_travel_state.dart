part of 'get_travel_bloc.dart';

sealed class GetTravelState extends Equatable{
  const GetTravelState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class GetTravelInitial extends GetTravelState {}

final class GetTravelLoading extends GetTravelState {}

final class GetTravelFailure extends GetTravelState {}

final class GetTravelSuccess extends GetTravelState {
  final List<Travel> travels;

  const GetTravelSuccess(this.travels);

  @override
  // TODO: implement props
  List<Object?> get props => [travels];
}

