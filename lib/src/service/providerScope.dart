import 'package:base_auth/src/riverpod/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BaseAuthenticator {
  static Future<ProviderScope> config(Widget child) async {
    final mypref = await SharedPreferences.getInstance();
    return ProviderScope(
      child: child,
      overrides: [sharedPrefProvider.overrideWithValue(mypref)],
    );
  }
}
