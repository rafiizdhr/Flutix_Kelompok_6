import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final double coverHeight = 10;
  final double profileHeight = 144;
  final double top = 150;

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: lebar,
        height: tinggi,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            const SizedBox(height: 80),
            buildProfileImage(),
            const SizedBox(height: 100),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      leading: Container(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          'assets/user.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        "James Bone",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      trailing: Container(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          'assets/pencil.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        "jamesbone@unmul.ac.id",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      trailing: Container(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          'assets/pencil.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.password_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Change Password",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      trailing: Container(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          'assets/pencil.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/profile.png"),
          radius: profileHeight / 2 - 3,
        ),
      );

  // Container(
  //       color: Colors.white.withOpacity(0.05),
  //       child: Row(
  //         children: [
  //           Container(
  //             width: 25,
  //             height: 25,
  //             child: Image.asset('assets/user.png', fit: BoxFit.cover),
  //           ),
  //         ],
  //       ),
  //     );
}
