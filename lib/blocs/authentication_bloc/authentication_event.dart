part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent extends Equatable{
  const AuthenticationEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

// Thay đổi người dùng xác thực
class AuthenticationUserChanged extends AuthenticationEvent{
  const AuthenticationUserChanged(this.user);

  final User? user;
}
