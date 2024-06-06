import 'package:equatable/equatable.dart';

import '../../user_repository.dart';

class MyUser extends Equatable {
  final String id;
  final String email;
  final String name;
  final String phoneNumber;

  MyUser({required this.id,
    required this.email,
    required this.name,
    required this.phoneNumber});

  // Người dùng trống đại diện cho người dùng chưa được xác thực
  static final empty = MyUser(id: '', email: '', name: '', phoneNumber: '');

  // Copy và sửa đổi tham số MyUser
  MyUser copyWith(
      {String? id, String? email, String? name, String? phoneNumber}) {
    return MyUser(
        id: id ?? this.id,
        email: email ?? this.email,
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber
    );
  }

  // Xác định người dùng hiện tại có đang trống hay không
  bool get isEmpty => this == MyUser.empty;

  // Xác định người dùng hiện tại có đang trống hay không
  bool get isNotEmpty => this != MyUser.empty;


  MyUserEntity toEntity(){
    return MyUserEntity(
      id: id,
      email: email,
      name: name,
      phoneNumber: phoneNumber
    );
  }

  static MyUser formEntity(MyUserEntity entity){
    return MyUser(
        id: entity.id,
        email: entity.email,
        name: entity.name,
        phoneNumber: entity.phoneNumber
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, email, name, phoneNumber];
}
