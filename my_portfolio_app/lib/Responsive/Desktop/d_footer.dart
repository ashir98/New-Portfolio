import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: const Color(0xff041d31),
      child: Center(
        child: Text("Copyrights \u00a9 Syed Ashir Ali",style: GoogleFonts.catamaran(fontSize: 20),)
      ),
    );
  }
}