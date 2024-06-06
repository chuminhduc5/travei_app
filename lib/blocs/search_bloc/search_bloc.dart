import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travel_repository/travel_repository.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final TravelRepository travelRepository;
  SearchBloc({required this.travelRepository}) : super(SearchInitial()) {
    on<PerformSearch>((event, emit) async{
      emit(SearchLoading());
      try {
        final result = await travelRepository.searchTravel(event.query);
        print('Search success with results: $result');
        emit(SearchSuccess(result));
      } catch (e){
        emit(SearchFailure(e.toString()));
      }
    });
  }
}
