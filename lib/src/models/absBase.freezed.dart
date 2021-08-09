// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'absBase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthTearOff {
  const _$AuthTearOff();

  Authenticated auth(BaseUser user) {
    return Authenticated(
      user,
    );
  }

  UnAuthenticated unauth() {
    return UnAuthenticated();
  }

  AdminUser admin(BaseUser usr) {
    return AdminUser(
      usr,
    );
  }

  InActive inActive(BaseUser usr) {
    return InActive(
      usr,
    );
  }
}

/// @nodoc
const $Auth = _$AuthTearOff();

/// @nodoc
mixin _$Auth {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseUser user) auth,
    required TResult Function() unauth,
    required TResult Function(BaseUser usr) admin,
    required TResult Function(BaseUser usr) inActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseUser user)? auth,
    TResult Function()? unauth,
    TResult Function(BaseUser usr)? admin,
    TResult Function(BaseUser usr)? inActive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) auth,
    required TResult Function(UnAuthenticated value) unauth,
    required TResult Function(AdminUser value) admin,
    required TResult Function(InActive value) inActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? auth,
    TResult Function(UnAuthenticated value)? unauth,
    TResult Function(AdminUser value)? admin,
    TResult Function(InActive value)? inActive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCopyWithImpl<$Res> implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  final Auth _value;
  // ignore: unused_field
  final $Res Function(Auth) _then;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({BaseUser user});
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(Authenticated(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BaseUser,
    ));
  }
}

/// @nodoc

class _$Authenticated implements Authenticated {
  _$Authenticated(this.user);

  @override
  final BaseUser user;

  @override
  String toString() {
    return 'Auth.auth(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseUser user) auth,
    required TResult Function() unauth,
    required TResult Function(BaseUser usr) admin,
    required TResult Function(BaseUser usr) inActive,
  }) {
    return auth(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseUser user)? auth,
    TResult Function()? unauth,
    TResult Function(BaseUser usr)? admin,
    TResult Function(BaseUser usr)? inActive,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) auth,
    required TResult Function(UnAuthenticated value) unauth,
    required TResult Function(AdminUser value) admin,
    required TResult Function(InActive value) inActive,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? auth,
    TResult Function(UnAuthenticated value)? unauth,
    TResult Function(AdminUser value)? admin,
    TResult Function(InActive value)? inActive,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements Auth {
  factory Authenticated(BaseUser user) = _$Authenticated;

  BaseUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnAuthenticatedCopyWith<$Res> {
  factory $UnAuthenticatedCopyWith(
          UnAuthenticated value, $Res Function(UnAuthenticated) then) =
      _$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthenticatedCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements $UnAuthenticatedCopyWith<$Res> {
  _$UnAuthenticatedCopyWithImpl(
      UnAuthenticated _value, $Res Function(UnAuthenticated) _then)
      : super(_value, (v) => _then(v as UnAuthenticated));

  @override
  UnAuthenticated get _value => super._value as UnAuthenticated;
}

/// @nodoc

class _$UnAuthenticated implements UnAuthenticated {
  _$UnAuthenticated();

  @override
  String toString() {
    return 'Auth.unauth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseUser user) auth,
    required TResult Function() unauth,
    required TResult Function(BaseUser usr) admin,
    required TResult Function(BaseUser usr) inActive,
  }) {
    return unauth();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseUser user)? auth,
    TResult Function()? unauth,
    TResult Function(BaseUser usr)? admin,
    TResult Function(BaseUser usr)? inActive,
    required TResult orElse(),
  }) {
    if (unauth != null) {
      return unauth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) auth,
    required TResult Function(UnAuthenticated value) unauth,
    required TResult Function(AdminUser value) admin,
    required TResult Function(InActive value) inActive,
  }) {
    return unauth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? auth,
    TResult Function(UnAuthenticated value)? unauth,
    TResult Function(AdminUser value)? admin,
    TResult Function(InActive value)? inActive,
    required TResult orElse(),
  }) {
    if (unauth != null) {
      return unauth(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements Auth {
  factory UnAuthenticated() = _$UnAuthenticated;
}

/// @nodoc
abstract class $AdminUserCopyWith<$Res> {
  factory $AdminUserCopyWith(AdminUser value, $Res Function(AdminUser) then) =
      _$AdminUserCopyWithImpl<$Res>;
  $Res call({BaseUser usr});
}

/// @nodoc
class _$AdminUserCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements $AdminUserCopyWith<$Res> {
  _$AdminUserCopyWithImpl(AdminUser _value, $Res Function(AdminUser) _then)
      : super(_value, (v) => _then(v as AdminUser));

  @override
  AdminUser get _value => super._value as AdminUser;

  @override
  $Res call({
    Object? usr = freezed,
  }) {
    return _then(AdminUser(
      usr == freezed
          ? _value.usr
          : usr // ignore: cast_nullable_to_non_nullable
              as BaseUser,
    ));
  }
}

/// @nodoc

class _$AdminUser implements AdminUser {
  _$AdminUser(this.usr);

  @override
  final BaseUser usr;

  @override
  String toString() {
    return 'Auth.admin(usr: $usr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdminUser &&
            (identical(other.usr, usr) ||
                const DeepCollectionEquality().equals(other.usr, usr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usr);

  @JsonKey(ignore: true)
  @override
  $AdminUserCopyWith<AdminUser> get copyWith =>
      _$AdminUserCopyWithImpl<AdminUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseUser user) auth,
    required TResult Function() unauth,
    required TResult Function(BaseUser usr) admin,
    required TResult Function(BaseUser usr) inActive,
  }) {
    return admin(usr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseUser user)? auth,
    TResult Function()? unauth,
    TResult Function(BaseUser usr)? admin,
    TResult Function(BaseUser usr)? inActive,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin(usr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) auth,
    required TResult Function(UnAuthenticated value) unauth,
    required TResult Function(AdminUser value) admin,
    required TResult Function(InActive value) inActive,
  }) {
    return admin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? auth,
    TResult Function(UnAuthenticated value)? unauth,
    TResult Function(AdminUser value)? admin,
    TResult Function(InActive value)? inActive,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin(this);
    }
    return orElse();
  }
}

abstract class AdminUser implements Auth {
  factory AdminUser(BaseUser usr) = _$AdminUser;

  BaseUser get usr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminUserCopyWith<AdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InActiveCopyWith<$Res> {
  factory $InActiveCopyWith(InActive value, $Res Function(InActive) then) =
      _$InActiveCopyWithImpl<$Res>;
  $Res call({BaseUser usr});
}

/// @nodoc
class _$InActiveCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements $InActiveCopyWith<$Res> {
  _$InActiveCopyWithImpl(InActive _value, $Res Function(InActive) _then)
      : super(_value, (v) => _then(v as InActive));

  @override
  InActive get _value => super._value as InActive;

  @override
  $Res call({
    Object? usr = freezed,
  }) {
    return _then(InActive(
      usr == freezed
          ? _value.usr
          : usr // ignore: cast_nullable_to_non_nullable
              as BaseUser,
    ));
  }
}

/// @nodoc

class _$InActive implements InActive {
  _$InActive(this.usr);

  @override
  final BaseUser usr;

  @override
  String toString() {
    return 'Auth.inActive(usr: $usr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InActive &&
            (identical(other.usr, usr) ||
                const DeepCollectionEquality().equals(other.usr, usr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usr);

  @JsonKey(ignore: true)
  @override
  $InActiveCopyWith<InActive> get copyWith =>
      _$InActiveCopyWithImpl<InActive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BaseUser user) auth,
    required TResult Function() unauth,
    required TResult Function(BaseUser usr) admin,
    required TResult Function(BaseUser usr) inActive,
  }) {
    return inActive(usr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BaseUser user)? auth,
    TResult Function()? unauth,
    TResult Function(BaseUser usr)? admin,
    TResult Function(BaseUser usr)? inActive,
    required TResult orElse(),
  }) {
    if (inActive != null) {
      return inActive(usr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) auth,
    required TResult Function(UnAuthenticated value) unauth,
    required TResult Function(AdminUser value) admin,
    required TResult Function(InActive value) inActive,
  }) {
    return inActive(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? auth,
    TResult Function(UnAuthenticated value)? unauth,
    TResult Function(AdminUser value)? admin,
    TResult Function(InActive value)? inActive,
    required TResult orElse(),
  }) {
    if (inActive != null) {
      return inActive(this);
    }
    return orElse();
  }
}

abstract class InActive implements Auth {
  factory InActive(BaseUser usr) = _$InActive;

  BaseUser get usr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InActiveCopyWith<InActive> get copyWith =>
      throw _privateConstructorUsedError;
}
