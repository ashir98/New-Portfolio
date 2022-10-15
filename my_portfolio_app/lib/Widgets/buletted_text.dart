import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class BulletedText extends StatelessWidget {
  String text;
   BulletedText({super.key, required this.text});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.008,
          width: MediaQuery.of(context).size.width * 0.008,
          decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.008,),
        Text(
          text,
          style: GoogleFonts.baloo2(
              fontSize: MediaQuery.of(context).size.width * 0.018,
              color: Colors.grey),
        ),
      ],
    );
  }
}
