import 'package:flutter/material.dart';

class ChooseSeat extends StatefulWidget {
  const ChooseSeat({super.key});

  @override
  State<ChooseSeat> createState() => _ChooseSeatState();
}

class _ChooseSeatState extends State<ChooseSeat> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Image(image: AssetImage("assets/back.png")),
        ),
      ),
      body: Container(
        width: lebar,
        height: tinggi,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
