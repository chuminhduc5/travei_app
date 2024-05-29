part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends Equatable{
  const SignUpEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SignUpRequired extends SignUpEvent{
  final MyUser user;
  final String password;

  const SignUpRequired(this.user, this.password);
}
