import 'package:firebase_core/firebase_core.dart';
import 'package:flutix_home_menu/bottom_navbar.dart';
import 'package:flutix_home_menu/firebase_options.dart';
import 'package:flutix_home_menu/pages/auth.dart';
import 'package:flutix_home_menu/pages/choose_seat.dart';
import 'package:flutix_home_menu/pages/editprofile_page.dart';
import 'package:flutix_home_menu/pages/home_page.dart';
import 'package:flutix_home_menu/pages/intro_page.dart';
import 'package:flutix_home_menu/pages/movie_category.dart';
import 'package:flutix_home_menu/pages/mywallet_page.dart';
import 'package:flutix_home_menu/pages/profile_page.dart';
import 'package:flutix_home_menu/pages/success_checkout.dart';
import 'package:flutix_home_menu/pages/ticket_page.dart';
import 'package:flutix_home_menu/pages/checkout.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "/navbar": (context) => const BottomNavScreen(),
        "/ticket": (context) => const MyTickets(),
        "/profile": (context) => ProfilePage(),
        "/editprofile": (context) => const EditProfile(),
        "/wallet": (context) => const MyWallet(),
        "/intro": (context) => const IntroPage(),
        "/category": (context) => const MovieCategory(),
        "/choose_seat": (context) => const ChooseSeat(),
        "/auth": (context) => const AuthPage(),
        "/checkout": (context) => Checkout(),
        "/Success_checkout": (context) => Success_checkout(),
      },
      initialRoute: "/intro",
    );
  }
}
