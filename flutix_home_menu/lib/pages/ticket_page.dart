import 'package:flutix_home_menu/pages/detail_tickets.dart';
import 'package:flutix_home_menu/pages/detail_tickets2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Kelas MyTickets merupakan widget stateless yang digunakan untuk menampilkan halaman tiket pengguna.
class MyTickets extends StatelessWidget {
  const MyTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mendapatkan lebar dan tinggi layar perangkat.
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    // Menggunakan DefaultTabController untuk membuat tab bar dengan dua tab: 'New' dan 'Used'.
    return DefaultTabController(
      length: 2, // Jumlah tab
      child: Scaffold(
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
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                const SizedBox(height: 30),
                // Container untuk menampilkan TabBar dengan dua tab: 'New' dan 'Used'.
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 65, 74, 100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Color.fromARGB(255, 0, 30, 108),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 4.0,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white,
                    tabs: [
                      Tab(text: 'New'),
                      Tab(text: 'Used'),
                    ],
                  ),
                ),
                // Expanded dan TabBarView untuk menampilkan konten tab yang sesuai.
                Expanded(
                  child: TabBarView(
                    children: [
                      // Tab pertama ('New') berisi daftar tiket baru.
                      Column(
                        children: [
                          const SizedBox(height: 40),
                          // Widget InkWell digunakan untuk menangani ketika pengguna menyentuh suatu area.
                          InkWell(
                            onTap: () {
                              // Navigasi ke halaman detail tiket.
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => detail_tickets()),
                              );
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage('assets/freelance.jpeg'),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "FREELANCE",
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "Saturday 21, 12:00",
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "Big Mall SMD",
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                          InkWell(
                            onTap: () {
                              // Navigasi ke halaman detail tiket versi kedua.
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => detail2()),
                              );
                            },
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage('assets/sherina.png'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "PETUALANGAN\nSHERINA 2",
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "Thursday 28, 15:00",
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "Big Mall SMD",
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Tab kedua ('Used') menampilkan pesan "NO HISTORY" jika tidak ada riwayat tiket.
                      Center(
                        child: Text(
                          'NO HISTORY',
                          style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
