import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({super.key});

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg2.png'), fit: BoxFit.cover)),
          child: Column(
            children: [
              const SizedBox(height: 100),
              Container(
                width: 360,
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Balance,",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "IDR",
                            style: GoogleFonts.raleway(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "2.027.390,00",
                            style: GoogleFonts.montserrat(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TabBar(
                        indicator: BoxDecoration(
                            color: Colors.purple.withOpacity(0.2)),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.white,
                        labelPadding: EdgeInsets.symmetric(vertical: 10),
                        tabs: [
                          Tab(
                            child: Column(
                              children: [
                                Icon(Icons.history),
                                const SizedBox(height: 6),
                                Text("History Transactions")
                              ],
                            ),
                          ),
                          Tab(
                            child: Column(
                              children: [
                                Icon(Icons.account_balance_wallet_outlined),
                                const SizedBox(height: 6),
                                Text("Top Up")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 360,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
