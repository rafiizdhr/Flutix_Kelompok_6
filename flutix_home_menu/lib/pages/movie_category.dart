import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieCategory extends StatefulWidget {
  const MovieCategory({super.key});

  @override
  State<MovieCategory> createState() => _MovieCategoryState();
}

class _MovieCategoryState extends State<MovieCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Image(image: AssetImage("assets/back.png")))),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg2.png"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              Text("Movie Category - Horror",
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 80, 69, 10)),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/nun.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "THE NUN II",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 80, 69, 10)),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/nun.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "THE NUN II",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 80, 69, 10)),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/nun.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "THE NUN II",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 80, 69, 10)),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/nun.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "THE NUN II",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
