part of 'get_news_bloc.dart';

sealed class GetNewsState extends Equatable{
  const GetNewsState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class GetNewsInitial extends GetNewsState {}

final class GetNewsFailure extends GetNewsState {}

final class GetNewsLoading extends GetNewsState {}

final class GetNewsSuccess extends GetNewsState {
  final List<News> news;

  const GetNewsSuccess(this.news);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
