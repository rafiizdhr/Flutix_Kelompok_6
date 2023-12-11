import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: lebar,
        height: tinggi,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Container(
              width: 240,
              height: 240,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/flutix.png"),
                fit: BoxFit.cover,
              )),
            ),
            const SizedBox(height: 20),
            Text(
              "New Experience",
              style: GoogleFonts.raleway(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 15),
            Text("Watch a new movie much\neasier than any before",
                style: GoogleFonts.raleway(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, "/auth");
                });
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0xFF001E6C)),
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 13),
                child: Text("Get Started",
                    style:
                        GoogleFonts.raleway(color: Colors.white, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
