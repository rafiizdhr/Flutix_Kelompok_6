import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  final Function()? ditekan;
  const RegisterPage({super.key, required this.ditekan});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final fullNameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    fullNameController.dispose();
    super.dispose();
  }

  void userRegister() async {
    //sebelum register akan muncul loading lingkaran
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      if (passwordController.text == confirmpasswordController.text) {
        //membuat email dan password ke firebase_auth
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        //menambah user ke firestore
        addUserDetails(
          fullNameController.text.trim(),
          emailController.text.trim(),
        );
      } else {
        //jika password dan confirm password tidak sama akan muncul pesan
        showErrorMessage("Password dont match");
      }
      //navigator pop untk menghilangkan loading lingkaran
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //jika terjadi error maka akan memunculkan pesan error melalui alertdialog
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
  }

  Future addUserDetails(String fullName, String email) async {
    await FirebaseFirestore.instance.collection('users').add({
      'full name': fullName,
      'email': email,
    });
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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: lebar,
        height: tinggi,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg2.png"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
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
                      "Create Your\nAccount",
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
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                //
                subTitle("Full Name"),
                const SizedBox(height: 5),
                teksfild(false, fullNameController),
                const SizedBox(height: 10),
                subTitle("Email Address"),
                const SizedBox(height: 5),
                teksfild(false, emailController),
                const SizedBox(height: 10),
                subTitle("Password"),
                const SizedBox(height: 5),
                teksfild(true, passwordController),
                const SizedBox(height: 10),
                subTitle("Confirm Password"),
                const SizedBox(height: 5),
                teksfild(true, confirmpasswordController),
                //
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    subTitle("Continue to Sign In"),
                    InkWell(
                      onTap: userRegister,
                      child: Container(
                        width: 35,
                        height: 37,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/arrow_right.png"),
                                fit: BoxFit.contain)),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: InkWell(
                    onTap: widget.ditekan,
                    child: Text("Already have an account ?",
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
