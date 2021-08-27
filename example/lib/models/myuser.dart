import 'dart:convert';
import 'package:base_auth/base_auth.dart';

class MyUser extends BaseUser {
  final String phoneNumber;

  const MyUser({
    required this.phoneNumber,
    required uid,
    String? fristName,
    String? lastName,
    required String userName,
    required String emailAddress,
    String? token,
    UserRoles role = UserRoles.Inactive,
    UserStatus status = UserStatus.UnAuth,
  }) : super(
          uid: uid,
          fristName: fristName,
          lastName: lastName,
          userName: userName,
          emailAddress: emailAddress,
          token: token,
          phoneNumber: phoneNumber,
          role: role,
        );

  @override
  MyUser copyWith(
      {String? fristName,
      String? lastName,
      String? userName,
      String? emailAddress,
      String? token,
      UserRoles? role,
      UserStatus? status,
      uid,
      String? phoneNumber,
      String? imageUrl}) {
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

  static MyUser initial() {
    return MyUser(
        phoneNumber: "038472948",
        uid: DateTime.now().microsecondsSinceEpoch,
        userName: "NO USERNAME",
        emailAddress: "NO EMAIL");
  }

  // MyUser copyWith({
  //   String? phoneNumber,
  //   dynamic uid,
  //   String? fristName,
  //   String? lastName,
  //   String? userName,
  //   String? emailAddress,
  //   String? token,
  //   UserRoles? role,
  //   UserStatus? status,
  // }) {
  // return MyUser(
  //   uid: uid ?? this.uid,
  //   phoneNumber: phoneNumber ?? this.phoneNumber,
  //   fristName: fristName ?? this.fristName,
  //   lastName: lastName ?? this.lastName,
  //   userName: userName ?? this.userName,
  //   emailAddress: emailAddress ?? this.emailAddress,
  //   token: token ?? this.token,
  //   role: role ?? this.role,
  //   status: status ?? this.status,
  // );
  // }

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

// import 'package:base_auth/base_auth.dart';

// class MyUser extends BaseUser {
//   final String adress;

//   MyUser({
//     required this.adress,
//     String? fristName,
//     String? lastName,
//     uid,
//     required String userName,
//     required String emailAddress,
//     String? token,
//     String? imageUrl,
//     String? phoneNumber,
//   }) : super(
//           uid: uid,
//           emailAddress: emailAddress,
//           userName: userName,
//         );
// }
