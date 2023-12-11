import 'package:flutix_home_menu/pages/home_page.dart';
import 'package:flutix_home_menu/pages/profile_page.dart';
import 'package:flutix_home_menu/pages/ticket_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int idxPage = 0;

  List<Widget> screens = [
    const HomePage(),
    const MyTickets(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(idxPage),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF420C5B), Color(0xFF0C1035)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp,
          ),
        ),
        child: BottomNavigationBar(
          unselectedLabelStyle: GoogleFonts.raleway(),
          selectedLabelStyle: GoogleFonts.raleway(fontWeight: FontWeight.bold),
          fixedColor: Colors.white,
          unselectedItemColor: Colors.white30,
          backgroundColor: Colors.transparent,
          onTap: (index) {
            setState(() {
              idxPage = index;
            });
          },
          currentIndex: idxPage,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("assets/movie_off.png", height: 30),
                activeIcon: Image.asset("assets/movie_on.png", height: 30),
                label: "Movies"),
            BottomNavigationBarItem(
                icon: Image.asset("assets/ticket_off.png", height: 30),
                activeIcon: Image.asset("assets/ticket_on.png", height: 30),
                label: "My Tickets"),
            BottomNavigationBarItem(
                icon: Image.asset("assets/profile_off.png", height: 30),
                activeIcon: Image.asset("assets/profile_on.png", height: 30),
                label: "Profile"),
          ],
        ),
      ),
    );
  }
}
