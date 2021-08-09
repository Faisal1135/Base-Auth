import 'package:base_auth/src/models/BaseUser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'absBase.freezed.dart';

@freezed
class Auth with _$Auth {
  factory Auth.auth(BaseUser user) = Authenticated;
  factory Auth.unauth() = UnAuthenticated;
  factory Auth.admin(BaseUser usr) = AdminUser;
  factory Auth.inActive(BaseUser usr) = InActive;
}
