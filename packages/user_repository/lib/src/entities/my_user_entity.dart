import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String id;
  final String email;
  final String name;
  final String phoneNumber;

  const MyUserEntity(
      {required this.id,
      required this.email,
      required this.name,
      required this.phoneNumber});

  Map<String, Object?> toDocument(){
    return {
      'id' : id,
      'email' : email,
      'name' : name,
      'phoneNumber' : phoneNumber
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc){
    return MyUserEntity(
        id: doc['id'] as String,
        email: doc['email'] as String,
        name: doc['name'] as String,
        phoneNumber: doc['phoneNumber'] as String,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, email, name, phoneNumber];

  @override
  String toString() {
    // TODO: implement toString
    return '''UserEntity: {
      id: $id,
      email: $email,
      name: $name,
      phoneNumber: $phoneNumber
    }''';
  }
}
