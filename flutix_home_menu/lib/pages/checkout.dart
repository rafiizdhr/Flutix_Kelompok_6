import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.white),
      ),
      body: Container(
        width: lebar,
        height: tinggi,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Check details bellow\nbefore checkout",
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                  Container(
                    width: 78,
                    height: 67,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/flutix.png"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 97,
                        height: 131,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset("assets/freelance.jpeg"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'FREELANCE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Comedy',
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
                          SizedBox(height: 5),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(thickness: 2, color: Colors.white),
              SizedBox(height: 20),
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
              SizedBox(height: 8),
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
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Seat',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Rp 80.000 x2',
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
                    'Fees',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Rp 5.000 x2',
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
                    'Total',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Rp 170.000,00',
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
              Divider(thickness: 2, color: Colors.white),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Saldo Wallet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Rp 10.000.000,00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
                  Text(
                    'Checkout Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: lebar * 0.06,
                      fontFamily: 'Amethysta',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, "/Success_checkout");
                        });
                      },
                      icon: Icon(Icons.arrow_circle_right),
                      iconSize: lebar * 0.2, // Adjust the size as needed
                      color: Colors.white,
                    ),
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
