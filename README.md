# base_auth

###### ` A complete Flutter authentication solution with state`

#### **Initialize:**

initialize your flutter app with BaseAuthenticator.config method.

```
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final app = await BaseAuthenticator.config(MyApp());
  runApp(app);
}
```

#### **Consume Auth Widget**

consume your user anywhere by BaseAuthWidget

```
BaseAuthWidget(
        auth: (user) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('$user'),
              SizedBox(
                height: 30,
              ),
              Text('$myuser'),
              TextButton.icon(
                onPressed: () async {
                  AuthRepository.logoutUser(context);
                },
                icon: Icon(Icons.logout),
                label: Text('logout'),
              )
            ],
          );
        },
        admin: (user) => Text('$user'),
        orElse: () {
          return LoginPage();
        },
      ),
```

#### Save and Login User

make a BaseUser instant and mutate with your user data . then call AuthRepository.setAuthUser to save the user and update in user state.

```
(formdata) async {
                  isLoading.value = !isLoading.value;
                  final newuser = BaseUser.init().copyWith(
                      userName: formdata['username'],
                      fristName: formdata['frist_name'],
                      lastName: formdata['last_name'],
                      emailAddress: formdata['email'],
                      token: DateTime.now().millisecondsSinceEpoch.toString());
                  await AuthRepository.setAuthUser(newuser, context);
```

#### Logout User

Logout your user by calling AuthRepository.logoutUser method

```
 TextButton.icon(
                onPressed: () async {
                  AuthRepository.logoutUser(context);
                },
                icon: Icon(Icons.logout),
                label: Text('logout'),
              )
```

#### Make Custom User

you can make custom user by extending BaseUser Class

```
class MyUser extends BaseUser {
  final String phoneNumber;

  const MyUser({
    required this.phoneNumber,
    required uid,
    String? fristName,
    String? lastName,
    required String userName,
    required String emailAddress,
    String? token,
    UserRoles role = UserRoles.Inactive,
    UserStatus status = UserStatus.UnAuth,
  }) : super(
          uid: uid,
          fristName: fristName,
          lastName: lastName,
          userName: userName,
          emailAddress: emailAddress,
          token: token,
          phoneNumber: phoneNumber,
          role: role,
```

#### Saving Custom Data

save your preference anywhere without async

```

AuthRepository.preferences(context)
                          .setBool("isDARK", true);
```



##### Author

###### Faisal Kabir Galib
