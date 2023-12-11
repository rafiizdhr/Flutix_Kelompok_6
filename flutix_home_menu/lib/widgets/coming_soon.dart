import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key, required this.comingsoon});
  final List comingsoon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: comingsoon.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: 300,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 11),
                        Container(
                          //image
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: const Color.fromARGB(255, 80, 69, 10),
                                  width: 2),
                              // boxShadow: [
                              //   BoxShadow(
                              //       offset: Offset(0, 0),
                              //       blurRadius: 10,
                              //       color: Colors.white)
                              // ],
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://image.tmdb.org/t/p/w500" +
                                          comingsoon[index]['backdrop_path']),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(height: 10),
                        Container(
                          //title
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            comingsoon[index]["title"],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        // const SizedBox(height: 50),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
