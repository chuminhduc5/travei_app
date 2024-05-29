part of 'sign_in_bloc.dart';

abstract class SignInEvent extends Equatable{
  const SignInEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

// Sự kiện khi SignIn
class SignInRequired extends SignInEvent{
  final String email;
  final String password;

  const SignInRequired(this.email, this.password);
}

// Sự kiện khi SignOut
class SignOutRequired extends SignInEvent{
  const SignOutRequired();
}
