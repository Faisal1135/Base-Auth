// import 'package:base_auth/base_auth.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final sharedPrefProvider = Provider<SharedPreferences>((ref) {
//   throw UnimplementedError();
// });

// final userinitProvider = StateNotifierProvider<UserInitNotifier, BaseUser>(
//   (ref) {
//     final pref = ref.read(sharedPrefProvider);
//     final hasUser = pref.containsKey("user");
//     print(hasUser);
//     if (hasUser) {
//       final userfromPref = pref.getString("user")!;
//       final user = BaseUser.fromJson(userfromPref);
//       return UserInitNotifier(ref.read, user);
//     }
//     return UserInitNotifier(ref.read);
//   },
// );

// class UserInitNotifier extends StateNotifier<BaseUser> {
//   UserInitNotifier(this.reader, [BaseUser? user])
//       : super(user ?? BaseUser.init());
//   final Reader reader;

//   Future<void> saveUserInPref(BaseUser user) async {
//     try {
//       final pref = reader(sharedPrefProvider);
//       await pref.setString("user", user.toJson());
//       await pref.setBool("isAuth", true);
//       await pref.setString("token", "mytoken");
//       state = user;
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   Future<void> logoutUser() async {
//     final pref = reader(sharedPrefProvider);
//     await pref.clear();
//     state = BaseUser.init();
//   }
// }

import 'package:base_auth/base_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:base_auth_test/models/myuser.dart';

final myuserStateProvider = StateNotifierProvider<MyuserNotifier, MyUser>(
  (ref) {
    // ignore: unused_local_variable
    // final baseuser = ref.watch(userNotiferProvider);
    final pref = ref.read(sharedPrefProvider);
    final hasUser = pref.containsKey("myuser");
    print(hasUser);
    if (hasUser) {
      final userfromPref = pref.getString("myuser")!;
      print(userfromPref);
      final user = MyUser.fromJson(userfromPref);
      return MyuserNotifier(ref.read, user);
    }
    return MyuserNotifier(ref.read);
  },
);

class MyuserNotifier extends StateNotifier<MyUser> {
  MyuserNotifier(this.reader, [MyUser? user]) : super(user ?? MyUser.init());
  final Reader reader;

  saveUserInPref(MyUser user) async {
    final pref = reader(sharedPrefProvider);
    await pref.setString('myuser', user.toJson());
    state = user;
  }
}
