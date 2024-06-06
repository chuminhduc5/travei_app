part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable{
  const SearchEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class PerformSearch extends SearchEvent{
  final String query;

  const PerformSearch(this.query);

  @override
  // TODO: implement props
  List<Object?> get props => [query];
}