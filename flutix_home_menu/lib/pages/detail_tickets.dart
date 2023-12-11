import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Mendefinisikan StatefulWidget dengan nama detail_tickets
class detail_tickets extends StatefulWidget {
  const detail_tickets({Key? key}) : super(key: key);

  // Membuat state untuk StatefulWidget
  @override
  State<detail_tickets> createState() => _CheckoutState();
}

// Mendefinisikan state untuk StatefulWidget
class _CheckoutState extends State<detail_tickets> {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan lebar dan tinggi layar
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false, // Menyembunyikan tombol kembali bawaan
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.white), // Tombol kembali yang disesuaikan
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
            crossAxisAlignment: CrossAxisAlignment.start,
            // Konten utama layar
            children: [
              const SizedBox(height: 70),
              // Judul "Ticket" di tengah layar
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
                ],
              ),
              SizedBox(height: 20),
              // Gambar dan detail tentang acara
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 330,
                        height: 194,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/frelance2.jpeg",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),
              // Nama acara, kategori, rating, dan ikon bintang
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Komedi',
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
                      // Menampilkan ikon bintang untuk rating
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
              // Lokasi acara, tanggal & waktu, jumlah tiket, dan nomor kursi
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bioskop',
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
                    'Tanggal & Waktu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Sabtu 21, 12:00',
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
                    '2 Tiket',
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
              // Nama pembeli, harga, dan kode QR
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama",
                        style: GoogleFonts.raleway(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "James Bone",
                        style: GoogleFonts.raleway(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Harga",
                        style: GoogleFonts.raleway(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "Rp 170.000,00",
                        style: GoogleFonts.raleway(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  // Menampilkan kode QR
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
              // ID Pesanan
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ID Pesanan',
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