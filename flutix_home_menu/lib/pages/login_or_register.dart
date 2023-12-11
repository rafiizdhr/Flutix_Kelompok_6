import 'package:flutix_home_menu/pages/login.dart';
import 'package:flutix_home_menu/pages/register.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    //jika showloginpage true masuk ke loginpage
    if (showLoginPage) {
      return LoginPage(
        ditekan: togglePages,
      );
    } else {
      //jika showloginpage false masuk ke registerpage
      return RegisterPage(
        ditekan: togglePages,
      );
    }
  }
}
