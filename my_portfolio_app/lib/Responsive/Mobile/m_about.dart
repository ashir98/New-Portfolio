import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileAbout extends StatefulWidget {
  const MobileAbout({super.key});

  @override
  State<MobileAbout> createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    String paragraph =
        "I am Syed Ashir Ali, App developer from Karachi, Pakistan. I have 1.5 year experience in Flutter mobile application development";
    return Column(
      children: [
        Text("ABOUT ME", style: GoogleFonts.lato(color: Colors.white, fontSize:30),),
        SizedBox(height: height*0.05,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:10),
          child: Container(
            width: double.infinity,
            height: height*0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff041d31),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(paragraph,style: GoogleFonts.aBeeZee(fontSize: height * 0.05, color: Colors.white),),
            ),
          ),
        ),
        SizedBox(height: height*0.05,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:10),
          child: Container(
            width: double.infinity,
            height: height*0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff041d31),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row()
                ],
              )
            ),
          ),
        ),
      ],
    );
  }
}