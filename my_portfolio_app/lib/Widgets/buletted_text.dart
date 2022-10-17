import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

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
          decoration:
              const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.008,
        ),
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

// ignore: must_be_immutable
class BulletText extends StatelessWidget {
  String text;
   BulletText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
      child: Row(
        children: [
          Container(
            height: 1.h,
            width: 1.h,
            decoration:
                const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          ),
          SizedBox(
            width: 1.h,
          ),
          Text(
            text,
            style: GoogleFonts.lato(
                fontSize: 3.h, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
