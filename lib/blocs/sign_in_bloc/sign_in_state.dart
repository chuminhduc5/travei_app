part of 'sign_in_bloc.dart';

@immutable
sealed class SignInState extends Equatable{
  const SignInState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

// Trạng thái ban đầu
class SignInInitial extends SignInState{}

// Trạng thái đăng nhập thành công
class SignInSuccess extends SignInState{}

// Trạng thái đăng nhập thất bại
class SignInFailure extends SignInState{
  final String? message;

  const SignInFailure({this.message});
}

// Quá trình đăng nhập hay trạng thái chờ đăng nhập
class SignInProcess extends SignInState{}
