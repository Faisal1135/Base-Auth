import 'dart:convert';

import 'package:base_auth/base_auth.dart';

class MyUser extends BaseUser {
  final String phoneNumber;
  final String uid;
  const MyUser({
    required this.phoneNumber,
    required this.uid,
    String? fristName,
    String? lastName,
    required String userName,
    required String emailAddress,
    String? token,
    UserRoles role = UserRoles.Inactive,
    UserStatus status = UserStatus.UnAuth,
  }) : super(
          fristName: fristName,
          lastName: lastName,
          userName: userName,
          emailAddress: emailAddress,
          token: token,
          role: role,
        );

  @override
  MyUser copyWith({
    String? phoneNumber,
    String? uid,
    String? fristName,
    String? lastName,
    String? userName,
    String? emailAddress,
    String? token,
    UserRoles? role,
    UserStatus? status,
  }) {
    return MyUser(
      uid: uid ?? this.uid,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      fristName: fristName ?? this.fristName,
      lastName: lastName ?? this.lastName,
      userName: userName ?? this.userName,
      emailAddress: emailAddress ?? this.emailAddress,
      token: token ?? this.token,
      role: role ?? this.role,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'fristName': fristName,
      'lastName': lastName,
      'userName': userName,
      'emailAddress': emailAddress,
      'token': token,
      'role': role.index,
      'status': status.index,
      'phoneNumber': phoneNumber,
      'uid': uid
    };
  }

  @override
  factory MyUser.init() {
    return MyUser(
        phoneNumber: "",
        uid: "",
        userName: "userName",
        emailAddress: "emailAddress");
  }

  @override
  factory MyUser.fromMap(Map<String, dynamic> map) {
    return MyUser(
      uid: map['uid'],
      phoneNumber: map['phoneNumber'],
      fristName: map['fristName'],
      lastName: map['lastName'],
      userName: map['userName'],
      emailAddress: map['emailAddress'],
      token: map['token'],
      role: UserRoles.values[map['role']],
      status: UserStatus.values[map['status']],
    );
  }

  @override
  String toJson() => json.encode(toMap());

  @override
  factory MyUser.fromJson(String source) => MyUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyUser(fristName: $fristName, lastName: $lastName, userName: $userName, emailAddress: $emailAddress, token: $token, role: $role, status: $status), phone:$phoneNumber, uid:$uid';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyUser &&
        other.fristName == fristName &&
        other.lastName == lastName &&
        other.userName == userName &&
        other.emailAddress == emailAddress &&
        other.token == token &&
        other.role == role &&
        other.status == status;
  }

  @override
  int get hashCode {
    return fristName.hashCode ^
        lastName.hashCode ^
        userName.hashCode ^
        emailAddress.hashCode ^
        token.hashCode ^
        role.hashCode ^
        status.hashCode;
  }
}
