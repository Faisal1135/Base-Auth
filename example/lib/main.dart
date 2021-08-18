import 'package:base_auth/base_auth.dart';
import 'package:base_auth_test/pages/mainPage.dart';
import 'package:base_auth_test/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) {
  return 0;
});

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final app = await BaseAuthenticator.config(MyApp());
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BASE auth TEST',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      routes: {
        MainPage.routeName: (context) => MainPage(),
        RegisterPage.routeName: (context) => RegisterPage(),
      },
    );
  }
}
