import 'package:base_auth/base_auth.dart';
import 'package:base_auth_test/pages/loginpage.dart';
import 'package:base_auth_test/riverpod/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookWidget {
  static const routeName = "MainPage";
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userStatus = useProvider(authProvider);

    final myuserStatus = useProvider(myuserStateProvider);
    print(myuserStatus);

    return Scaffold(
      body: userStatus.maybeWhen(
        auth: (user) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$user'),
            Text('$myuserStatus'),
            TextButton.icon(
              onPressed: () async {
                await context.read(userNotiferProvider.notifier).logoutUser();
              },
              icon: Icon(Icons.logout),
              label: Text('logout'),
            )
          ],
        ),
        admin: (user) => Text('$user'),
        orElse: () {
          return LoginPage();
        },
      ),
    );
  }
}


// userInit.isAuth
//           ? Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('$userInit'),
                  // TextButton.icon(
                  //     onPressed: () async {
                  //       await context
                  //           .read(userNotiferProvider.notifier)
                  //           .logoutUser();
                  //     },
                  //     icon: Icon(Icons.logout),
                  //     label: Text('logout'))
//                 ],
//               ),
//             )
//           : LoginPage(),