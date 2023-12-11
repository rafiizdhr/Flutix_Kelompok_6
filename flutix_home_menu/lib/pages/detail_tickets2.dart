import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detail2 extends StatefulWidget {
  const detail2
({Key? key}) : super(key: key);

  @override
  State<detail2
> createState() => _CheckoutState();
}

class _CheckoutState extends State<detail2> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false, // Set this to false
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.white),
      ),
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
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ticket',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // Add other widgets as needed
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 330,
                        height: 194,
                        // margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/sherina2.jpg",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PETUALANGAN SHERINA 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Comedy | Adventure',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      for (int i = 0; i < 5; i++)
                        Icon(
                          Icons.star,
                          color: i < 4 ? Colors.blueGrey : Colors.white,
                          size: 20,
                        ),
                      SizedBox(width: 8),
                      Text(
                        '9/10',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cinema',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Big Mall SMD',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date & Time',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Sat 21, 12:00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2 Tickets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'C1, C2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: GoogleFonts.raleway(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "James Bone",
                        style: GoogleFonts.raleway(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Price",
                        style: GoogleFonts.raleway(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "Rp 170.000,00",
                        style: GoogleFonts.raleway(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/qr.png'),
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "Name",
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 18,
              //         fontFamily: 'Raleway',
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //   ],
              // ),

              // Row(
              //   children: [
              //     Text(
              //       "James Bone",
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 18,
              //         fontFamily: 'Raleway',
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 25),
              // Row(
              //   children: [
              //     Text(
              //       "Price",
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 18,
              //         fontFamily: 'Raleway',
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Text(
              //       "Rp 170.000,00",
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 18,
              //         fontFamily: 'Raleway',
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ID Order',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '2208199612389',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              // Add other widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}
