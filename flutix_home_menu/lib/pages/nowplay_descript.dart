import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NowplayDescript extends StatefulWidget {
  final String name, description, bannerUrl, vote, releasedDate;
  const NowplayDescript(
      {super.key,
      required this.name,
      required this.description,
      required this.bannerUrl,
      required this.vote,
      required this.releasedDate});

  @override
  State<NowplayDescript> createState() => _NowplayDescriptState();
}

class _NowplayDescriptState extends State<NowplayDescript> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: lebar,
        height: tinggi,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ))),
                      child: Image.network(
                        widget.bannerUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 190,
                      left: 25,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/back.png"))),
                        ),
                      ))
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  widget.name.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "${widget.vote.substring(0, 3)} / 10",
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Synopsis",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        widget.description,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 100),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, "/checkout");
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 0, 30, 108))),
                    child: Text(
                      "BUY TICKET",
                      style: GoogleFonts.roboto(fontSize: 16),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
