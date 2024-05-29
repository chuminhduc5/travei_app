part of 'sign_up_bloc.dart';

abstract class SignUpState extends Equatable{
  const SignUpState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

// Trạng thái ban đầu
class SignUpInitial extends SignUpState{}

// Trạng thái đăng ký thành công
class SignUpSuccess extends SignUpState{}

// Trạng thái đăng ký thất bại
class SignUpFailure extends SignUpState{}

// Trạng thái chờ đăng ký
class SignUpProcess extends SignUpState{}
