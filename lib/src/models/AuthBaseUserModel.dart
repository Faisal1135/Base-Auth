
// abstract class AbstractBaseUser {
//   final String? fristName;
//   final String? lastName;
//   final String userName;
//   final String emailAddress;
//   final String? token;
//   final UserRoles role;
//   final UserStatus status;

//   AbstractBaseUser({
//     this.fristName,
//     this.lastName,
//     required this.userName,
//     required this.emailAddress,
//     this.token,
//     this.role = UserRoles.Inactive,
//     this.status = UserStatus.UnAuth,
//   });

//   get isAuth => this.status == UserStatus.Auth;

//   @override
//   String toString() {
//     return 'AbstractBaseUser(fristName: $fristName, lastName: $lastName, userName: $userName, emailAddress: $emailAddress, token: $token, role: $role, status: $status)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is AbstractBaseUser &&
//         other.fristName == fristName &&
//         other.lastName == lastName &&
//         other.userName == userName &&
//         other.emailAddress == emailAddress &&
//         other.token == token &&
//         other.role == role &&
//         other.status == status;
//   }

//   @override
//   int get hashCode {
//     return fristName.hashCode ^
//         lastName.hashCode ^
//         userName.hashCode ^
//         emailAddress.hashCode ^
//         token.hashCode ^
//         role.hashCode ^
//         status.hashCode;
//   }
// }
