import 'package:base_auth/src/models/BaseUser.dart';
import 'package:base_auth/src/models/absBase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPrefProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError();
});

final userNotiferProvider = StateNotifierProvider<BaseUserNotifier, BaseUser>(
  (ref) {
    final pref = ref.read(sharedPrefProvider);
    final hasUser = pref.containsKey("user");
    print(hasUser);
    if (hasUser) {
      final userfromPref = pref.getString("user")!;
      print(userfromPref);
      final user = BaseUser.fromJson(userfromPref);
      return BaseUserNotifier(ref.read, user);
    }
    return BaseUserNotifier(ref.read);
  },
);

class BaseUserNotifier extends StateNotifier<BaseUser> {
  BaseUserNotifier(this.reader, [BaseUser? user])
      : super(user ??
            BaseUser(uid: '0', userName: "no user", emailAddress: "no email"));

  final Reader reader;

  setState(BaseUser user) => state = user;

  Future<void> authenticate(
      Future<BaseUser> Function({Map<String, dynamic> kwargs}) signIn) async {
    final user = await signIn();
    setState(user);
  }

  Future<void> saveUserInPref(BaseUser user) async {
    try {
      final pref = reader(sharedPrefProvider);
      await pref.setString("user", user.toJson());
      await pref.setBool("isAuth", true);
      await pref.setString("token", "mytoken");
      state = user;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> logoutUser() async {
    final pref = reader(sharedPrefProvider);
    await pref.clear();
    state = BaseUser.init();
  }
}

final authProvider = Provider<Auth>(
  (ref) {
    final user = ref.watch(userNotiferProvider);

    if (user.isAuth) {
      switch (user.role) {
        case UserRoles.SuperAdmin:
          return Auth.admin(user);

        case UserRoles.Inactive:
          return Auth.inActive(user);

        case UserRoles.Active:
          return Auth.auth(user);

        default:
          return Auth.auth(user);
      }
    }

    return Auth.unauth();
  },
);
