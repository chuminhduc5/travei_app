import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_repository/news_repository.dart';

part 'get_news_event.dart';
part 'get_news_state.dart';

class GetNewsBloc extends Bloc<GetNewsEvent, GetNewsState> {
  final NewsRepository _newsRepository;

  GetNewsBloc(this._newsRepository) : super(GetNewsInitial()) {
    on<GetNews>((event, emit) async{
      emit(GetNewsLoading());
      try {
        List<News> news = await _newsRepository.getNews();
        emit(GetNewsSuccess(news));
      } catch (e){
        emit(GetNewsFailure());
      }
    });
  }
}
