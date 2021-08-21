import 'package:base_auth/src/riverpod/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../base_auth.dart';

class BaseAuthWidget extends ConsumerWidget {
  final Widget Function(BaseUser)? auth;
  final Widget Function()? unauth;
  final Widget Function(BaseUser)? admin;
  final Widget Function(BaseUser)? inActive;
  final Widget Function() orElse;

  const BaseAuthWidget(
      {this.auth,
      this.unauth,
      this.admin,
      this.inActive,
      required this.orElse});

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final parseauth = watch(authProvider);
    return parseauth.maybeWhen(
        auth: auth,
        unauth: unauth,
        admin: admin,
        inActive: inActive,
        orElse: orElse);
  }
}
