import 'package:base_auth/base_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_hook/form_hook.dart';

class RegisterPage extends HookWidget {
  static const routeName = "RegisterPage";
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: MainFormView(
        fields: ['frist_name', 'last_name', 'username', 'email', 'password'],
        onSubmit: (formdata) {
          print(formdata);
        },
      ),
    );
  }
}

class WidTestEX extends StatelessWidget {
  const WidTestEX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseAuthWidget(
      orElse: () => Text('text'),
    );
  }
}
