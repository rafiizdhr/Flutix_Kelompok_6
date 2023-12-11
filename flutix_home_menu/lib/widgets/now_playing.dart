import "package:flutix_home_menu/pages/nowplay_descript.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class NowPlayingList extends StatefulWidget {
  const NowPlayingList({super.key, required this.nowplaying});
  final List nowplaying;

  @override
  State<NowPlayingList> createState() => _NowPlayingListState();
}

class _NowPlayingListState extends State<NowPlayingList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 370,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.nowplaying.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NowplayDescript(
                                name: widget.nowplaying[index]["title"],
                                description: widget.nowplaying[index]
                                    ["overview"],
                                bannerUrl: "https://image.tmdb.org/t/p/w500" +
                                    widget.nowplaying[index]['backdrop_path'],
                                vote: widget.nowplaying[index]["vote_average"]
                                    .toString(),
                                releasedDate: widget.nowplaying[index]
                                    ["release_date"])));
                  },
                  child: Container(
                    width: 170,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 11),
                        Container(
                          //image
                          height: 240,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: const Color.fromARGB(255, 80, 69, 10),
                                  width: 2),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    color: Colors.white)
                              ],
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://image.tmdb.org/t/p/w500" +
                                          widget.nowplaying[index]
                                              ['poster_path']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: 10),
                        Container(
                          //title
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            widget.nowplaying[index]["title"],
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
