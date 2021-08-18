// import 'package:dio/dio.dart';
import 'package:base_auth/base_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthRepository<T> {
  final Reader reader;

  const AuthRepository({required this.reader});

  Future<void> setAuthUser(BaseUser user, BuildContext context) {
    return context.read(userNotiferProvider.notifier).saveUserInPref(user);
  }
}
