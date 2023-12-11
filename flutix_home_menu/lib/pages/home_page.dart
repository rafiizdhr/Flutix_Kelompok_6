import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutix_home_menu/widgets/coming_soon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:flutix_home_menu/widgets/now_playing.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List listMovie = [];
  List listComingSoon = [];
  List genre = [];
  final String apiKey = '55bce47d1d95223c72712aa4bcfd35f0';
  final String readAccessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1NWJjZTQ3ZDFkOTUyMjNjNzI3MTJhYTRiY2ZkMzVmMCIsInN1YiI6IjY1MTEwNmI5YTNlNGJhMDEzODE5OGExNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.-2lxPPskE5Ay-nfHJY2p20Zs5PF0w6Rr7JOWeSUUtQc';

  @override
  void initState() {
    loadmovies();
    super.initState();
  }

  loadmovies() async {
    TMDB tmdbApi = TMDB(ApiKeys(apiKey, readAccessToken),
        logConfig: ConfigLogger(
          showLogs: true,
          showErrorLogs: true,
        ));
    Map nowPlayingResult = await tmdbApi.v3.movies.getNowPlaying();
    Map comingSoonResult = await tmdbApi.v3.movies.getUpcoming();
    Map genreResult = await tmdbApi.v3.genres.getMovieList();
    setState(() {
      listMovie = nowPlayingResult["results"];
      listComingSoon = comingSoonResult["results"];
      genre = genreResult['genres'];
    });
    print(listMovie);
  }

  userLogOut() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    await FirebaseAuth.instance.signOut();
    Navigator.pop(context);
  }

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60),
              Row(
                children: [
                  const SizedBox(width: 26),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/profile.png"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("James Bone",
                          style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700)),
                      Text("IDR 800.000",
                          style: GoogleFonts.raleway(
                              color: Colors.white, fontSize: 16)),
                    ],
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                      onPressed: userLogOut,
                      icon: Icon(
                        Icons.output,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              ),
              const SizedBox(height: 25),
              pembatas(),
              const SizedBox(height: 20),
              sectionTitle("Now Playing"),
              const SizedBox(height: 10),
              SizedBox(
                height: 330,
                child: ListView(
                  // scrollDirection: Axis.horizontal,
                  children: [
                    //
                    NowPlayingList(nowplaying: listMovie),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              pembatas(),
              const SizedBox(height: 20),
              sectionTitle("Movie Category"),
              sectionSubTitle("choose your favorite category"),
              const SizedBox(height: 25),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 360,
                height: 120,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 30, 108),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 17,
                        color: Color.fromARGB(255, 66, 12, 91))
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    category("assets/olahraga.png"),
                    category("assets/gayahidup.png"),
                    category("assets/kesehatan.png"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              pembatas(),
              const SizedBox(height: 20),
              sectionTitle("Coming Soon"),
              sectionSubTitle("exciting movies coming to theaters soon"),
              const SizedBox(height: 20),
              SizedBox(
                height: 230,
                child: ListView(
                  // scrollDirection: Axis.horizontal,
                  children: [
                    //
                    ComingSoonList(comingsoon: listComingSoon),
                  ],
                ),
              ),
              // GridView(
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2),
              //   children: [
              //     Container(
              //       width: 100,
              //       height: 100,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //             image: AssetImage("assets/nun.png"),
              //             fit: BoxFit.cover),
              //       ),
              //     )
              //   ],
              // ),
              // const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Container comingSoon(String image) {
    return Container(
      width: 140,
      height: 200,
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 80, 69, 10), width: 2),
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    );
  }

  InkWell category(String image) {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.pushNamed(context, "/category");
        });
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 18, 0, 0),
        width: 85,
        height: 85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )),
      ),
    );
  }

  Padding sectionTitle(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31),
      child: Text(text,
          style: GoogleFonts.raleway(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
    );
  }

  Padding sectionSubTitle(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31),
      child: Text(text,
          style: GoogleFonts.raleway(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300)),
    );
  }

  Divider pembatas() {
    return const Divider(
      thickness: 2,
      color: Colors.white,
    );
  }
}
