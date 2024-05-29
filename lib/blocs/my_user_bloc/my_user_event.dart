part of 'my_user_bloc.dart';

abstract class MyUserEvent extends Equatable{
  const MyUserEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetMyUser extends MyUserEvent{
  final String myUserId;

  const GetMyUser({required this.myUserId});

  @override
  // TODO: implement props
  List<Object?> get props => [myUserId];
}
