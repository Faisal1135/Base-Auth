import 'package:base_auth/base_auth.dart';
import 'package:base_auth_test/models/myuser.dart';
import 'package:base_auth_test/riverpod/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_hook/form_hook.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterPage extends HookWidget {
  static const routeName = "RegisterPage";
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    final basusr = useProvider(userNotiferProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: !isLoading.value
          ? SingleChildScrollView(
              child: MainFormView(
                fields: [
                  'frist_name',
                  'last_name',
                  'username',
                  'email',
                  'password',
                  Text('$basusr')
                ],
                onSubmit: (formdata) async {
                  isLoading.value = !isLoading.value;
                  final newuser = BaseUser.init().copyWith(
                      userName: formdata['username'],
                      fristName: formdata['frist_name'],
                      lastName: formdata['last_name'],
                      emailAddress: formdata['email'],
                      token: DateTime.now().millisecondsSinceEpoch.toString());
                  await AuthRepository.setAuthUser(newuser, context);
                  AuthRepository.preferences(context).setStringList(
                      "creduser", [formdata['email'], formdata['password']]);

                  await context
                      .read(myuserStateProvider.notifier)
                      .saveUserInPref(
                        MyUser.initial().copyWith(
                            userName: newuser.userName,
                            fristName: newuser.fristName,
                            lastName: newuser.lastName,
                            emailAddress: newuser.emailAddress,
                            status: UserStatus.Auth,
                            role: UserRoles.Active,
                            token: newuser.token),
                      );
                  isLoading.value = !isLoading.value;
                  Navigator.pop(context);
                },
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
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
