part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<Travel> result;

  const  SearchSuccess(this.result);

  @override
  // TODO: implement props
  List<Object?> get props => [result];
}

final class SearchFailure extends SearchState {
  final String error;

  const SearchFailure(this.error);

  @override
  // TODO: implement props
  List<Object?> get props => [error];
}
