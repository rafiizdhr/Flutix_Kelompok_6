import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutix_home_menu/bottom_navbar.dart';
import 'package:flutix_home_menu/pages/login_or_register.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        //
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //jika user sudah login, maka langsung ke home 
          if (snapshot.hasData){
            return const BottomNavScreen();
          } else {
            //jika user belum login otomatis ke login 
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
