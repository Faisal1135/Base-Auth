import 'package:base_auth/base_auth.dart';
import 'package:base_auth_test/models/myuser.dart';
import 'package:base_auth_test/pages/register.dart';
import 'package:base_auth_test/riverpod/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_hook/form_hook.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends HookWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: isLoading.value
            ? CircularProgressIndicator()
            : Column(
                children: [
                  MainFormView(
                    fields: [
                      "email",
                      FormHookUtil.textForm(
                          fieldDecType: FieldDecType.Rounded,
                          name: "password",
                          label: "Password",
                          obscure: true,
                          context: context)
                    ],
                    onSubmit: (formdata) async {
                      isLoading.value = !isLoading.value;
                      print(formdata);

                      final myuser = MyUser.init();
                      final user = BaseUser(
                          uid: "0",
                          userName: "myusername",
                          emailAddress: formdata["email"]);
                      await context
                          .read(userNotiferProvider.notifier)
                          .saveUserInPref(user.copyWith(
                                  emailAddress: formdata['email'],
                                  token: formdata['password'],
                                  status: UserStatus.Auth,
                                  role: UserRoles.Active)
                              // user.copyWith(
                              // status: UserStatus.Auth, role: UserRoles.Active),
                              );
                      await context
                          .read(myuserStateProvider.notifier)
                          .saveUserInPref(myuser.copyWith(
                              emailAddress: formdata['email'],
                              token: formdata['password'],
                              status: UserStatus.Auth,
                              uid: '1',
                              phoneNumber: '0234544555',
                              role: UserRoles.Active));
                      isLoading.value = !isLoading.value;
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RegisterPage.routeName);
                    },
                    color: Colors.amber,
                    child: Text('Register'),
                  )
                ],
              ),
      ),
    );
  }
}
