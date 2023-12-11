import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  final Function()? ditekan;
  const LoginPage({super.key, required this.ditekan});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void userLogin() async {
    //memunculkan circular loading saat menunggu login
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      //sign in melalui email,password dengan controller
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.pop(context); //menghilangkan loading lingkaran 
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      //jika terjadi error, memunculkan pesan error dgn alertdialog
      showErrorMessage(e.code);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
              child: Text(
                message,
                style: TextStyle(color: Colors.black),
              ),
            ),
          );
        });
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
              image: AssetImage("assets/bg2.png"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome Back,\nExplorer !!",
                    style:
                        GoogleFonts.raleway(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    width: 78,
                    height: 67,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/flutix.png"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
              const SizedBox(height: 40),
              subTitle("Email Address"),
              const SizedBox(height: 5),
              teksfild(false, emailController),
              const SizedBox(height: 30),
              subTitle("Password"),
              const SizedBox(height: 5),
              teksfild(true, passwordController),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  subTitle("Continue to Sign In"),
                  InkWell(
                    onTap: userLogin,
                    child: Container(
                      width: 35,
                      height: 37,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/arrow_right.png"),
                              fit: BoxFit.contain)),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 80),
              Center(
                child: InkWell(
                  onTap: widget.ditekan,
                  child: Text("Create New Account",
                      style: GoogleFonts.raleway(
                          fontSize: 13,
                          color: Colors.grey,
                          decoration: TextDecoration.underline)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text subTitle(String text) {
    return Text(
      text,
      style: GoogleFonts.raleway(color: Colors.white, fontSize: 16),
    );
  }

  TextField teksfild(bool obscureText, TextEditingController controller) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(94, 217, 217, 217),
        filled: true,
        hintText: "Type Here..",
        hintStyle: TextStyle(color: Colors.grey[500]),
        enabledBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
      ),
    );
  }
}
