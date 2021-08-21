import 'dart:convert';

enum UserRoles {
  Active,
  Staff,
  SuperAdmin,
  Inactive,
}

enum UserStatus { Auth, UnAuth }

class BaseUser {
  final dynamic uid;
  final String? fristName;
  final String? lastName;
  final String userName;
  final String emailAddress;
  final String? phoneNumber;
  final String? imageUrl;
  final String? token;
  final UserRoles role;
  final UserStatus status;
  const BaseUser({
    this.fristName,
    this.lastName,
    required this.uid,
    required this.userName,
    required this.emailAddress,
    this.token,
    this.imageUrl,
    this.phoneNumber,
    this.role = UserRoles.Inactive,
    this.status = UserStatus.UnAuth,
  });

  bool get isAuth => this.status == UserStatus.Auth;

  BaseUser copyWith({
    String? fristName,
    String? lastName,
    String? userName,
    String? emailAddress,
    String? token,
    UserRoles? role,
    UserStatus? status,
    dynamic uid,
    String? phoneNumber,
    String? imageUrl,
  }) {
    return BaseUser(
      uid: uid ?? this.uid,
      fristName: fristName ?? this.fristName,
      lastName: lastName ?? this.lastName,
      userName: userName ?? this.userName,
      emailAddress: emailAddress ?? this.emailAddress,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      imageUrl: imageUrl ?? this.imageUrl,
      token: token ?? this.token,
      role: role ?? this.role,
      status: status ?? this.status,
    );
  }

  BaseUser makeauthUser(BaseUser user) =>
      user.copyWith(status: UserStatus.Auth, role: UserRoles.Active);

  static BaseUser init() =>
      BaseUser(userName: "no user", emailAddress: "no email", uid: 0);

  Map<String, dynamic> toMap() {
    return {
      'fristName': fristName,
      'lastName': lastName,
      'userName': userName,
      'emailAddress': emailAddress,
      'token': token,
      'role': role.index,
      'status': status.index,
      'uid': uid,
      'phoneNumber': phoneNumber,
      'imageUrl': imageUrl,
    };
  }

  @override
  factory BaseUser.fromMap(Map<String, dynamic> map) {
    return BaseUser(
      uid: map['uid'] ?? '0',
      fristName: map['fristName'],
      lastName: map['lastName'],
      userName: map['userName'],
      phoneNumber: map['phoneNumber'],
      imageUrl: map['imageUrl'],
      emailAddress: map['emailAddress'],
      token: map['token'],
      role: UserRoles.values[map['role']],
      status: UserStatus.values[map['status']],
    );
  }

  String toJson() => json.encode(toMap());

  factory BaseUser.fromJson(String source) =>
      BaseUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BaseUser(uid: $uid ,fristName: $fristName, lastName: $lastName, userName: $userName, emailAddress: $emailAddress, token: $token, role: $role, status: $status,phoneNumber: $phoneNumber , imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BaseUser &&
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
