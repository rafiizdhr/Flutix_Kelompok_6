import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  final double coverHeight = 10;
  final double profileHeight = 144;
  final double top = 150;

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
        // extendBody: true,
        // extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        // ),
        body: Container(
          width: lebar,
          height: tinggi,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(top: top - 100, child: buildCoverImage()),
              Positioned(top: top - 40, child: buildProfileImage()),
              Positioned(top: top + 115, child: sectionTitle("James Bone")),
              Positioned(
                  top: top + 140,
                  child: sectionSubTitle("jamesbone@unmul.ac.id")),
              Positioned(top: top + 200, child: buildOption())
            ],
          ),
        ));
  }

  Widget buildCoverImage() => Container(
      width: 350,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: Colors.white),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://www.reliancedigital.in/wp-content/uploads/2019/02/netflix_movies_cover.jpg',
              ))));

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/profile.png"),
          radius: profileHeight / 2 - 3,
        ),
      );

  Widget buildOption() => Column(
        children: [
          Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, "/editprofile");
                  });
                },
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/user.png"),
                      )),
                    ),
                    sectionSubTitle("Edit Profile"),
                  ],
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, "/wallet");
                  });
                },
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/dompet.png"),
                      )),
                    ),
                    sectionSubTitle("My Wallet"),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/bahasa.png"),
                    )),
                  ),
                  sectionSubTitle("Change Language"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/help.png"),
                    )),
                  ),
                  sectionSubTitle("Help Center"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/rate.png"),
                    )),
                  ),
                  sectionSubTitle("Rate Flutix App"),
                  SizedBox(height: 15)
                ],
              ),
            ],
          )),
        ],
      );

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
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300)),
    );
  }
}
