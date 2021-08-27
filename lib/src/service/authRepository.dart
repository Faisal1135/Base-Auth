// import 'package:dio/dio.dart';
import 'package:base_auth/base_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final Reader reader;

  const AuthRepository({required this.reader});

  static Future<void> setAuthUser(BaseUser user, BuildContext context) {
    return context
        .read(userNotiferProvider.notifier)
        .saveUserInPref(user.toAuth);
  }

  static Future<void> logoutUser(BuildContext context) {
    return context.read(userNotiferProvider.notifier).logoutUser();
  }

  static SharedPreferences preferences(BuildContext context) {
    return context.read(sharedPrefProvider);
  }
}
