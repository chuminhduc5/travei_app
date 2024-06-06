part of 'get_news_bloc.dart';

sealed class GetNewsEvent extends Equatable{
  const GetNewsEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetNews extends GetNewsEvent{}
