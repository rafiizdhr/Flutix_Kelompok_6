import 'package:flutix_home_menu/bottom_navbar.dart';
import 'package:flutter/material.dart';

class Success_checkout extends StatefulWidget {
  const Success_checkout({Key? key}) : super(key: key);

  @override
  State<Success_checkout> createState() => _Success_checkoutState();
}

class _Success_checkoutState extends State<Success_checkout> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width.toDouble();
    var tinggi = MediaQuery.of(context).size.height.toDouble();
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        width: lebar,
        height: tinggi,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 78,
                    height: 67,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/flutix.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'THE NUN II',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            height:
                                1.0, // Ganti dengan nilai sesuai kebutuhan Anda
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 176,
                        height: 251,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset("assets/nun.png"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Happy Watching !',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'You Have Successfully\nBought The Ticket',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                          ),
                          backgroundColor: MaterialStateProperty.resolveWith(
                            (states) {
                              if (states.contains(MaterialState.pressed)) {
                                // Warna saat tombol ditekan
                                return Colors
                                    .grey; // Ganti dengan warna yang diinginkan saat ditekan
                              } else {
                                // Warna saat tombol tidak ditekan
                                return Color(
                                    0xFF001E6C); // Ganti dengan warna yang diinginkan
                              }
                            },
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BottomNavScreen();
                          }));
                        },
                        child: Text(
                          "Back To Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
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
