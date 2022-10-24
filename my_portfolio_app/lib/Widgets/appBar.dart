// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends StatelessWidget {
  ItemScrollController itemScrollController;
  CustomAppBar({super.key, required this.itemScrollController});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: const Color(0xff052946),
      title: GradientText(
        'Ashir.',
        colors: const [
          Color(0xff2Ac9d7),
          Color(0xffD247f7),
        ],
        style: GoogleFonts.lato(
            fontSize: MediaQuery.of(context).size.height * 0.04,
            fontWeight: FontWeight.bold),
      ),
      actions: [
        SizedBox(width: size*0.05,),
        TextButton(
          onPressed:() =>itemScrollController.scrollTo(index: 0, duration: const Duration(milliseconds: 500)),
          child: GradientText(
            "Home",
            colors: const [
              Color(0xff2Ac9d7),
              Color(0xffD247f7),
            ],
            style: GoogleFonts.lato(
                fontSize: size * 0.015,
                fontWeight: FontWeight.bold,
                color: const Color(0xff2Ac9d7)),
          ),
        ),
        SizedBox(width: size*0.05,),
        TextButton(
          onPressed:() =>itemScrollController.scrollTo(index: 1, duration: const Duration(milliseconds: 500)),
          child: GradientText(
            "About",
            colors: const [
              Color(0xff2Ac9d7),
              Color(0xffD247f7),
            ],
            style: GoogleFonts.lato(
                fontSize: size * 0.015,
                fontWeight: FontWeight.bold,
                color: const Color(0xff2Ac9d7)),
          ),
        ),
        SizedBox(width: size*0.05,),
        TextButton(
          onPressed:() =>itemScrollController.scrollTo(
            index: 2, duration: const Duration(milliseconds: 500),
            ),
          child: GradientText(
            "Projects",
            colors: const [
              Color(0xff2Ac9d7),
              Color(0xffD247f7),
            ],
            style: GoogleFonts.lato(
                fontSize: size * 0.015,
                fontWeight: FontWeight.bold,
                color: const Color(0xff2Ac9d7)),
          ),
        ),
        SizedBox(width: size*0.02,),
         Center(
           child: Container(
              height: MediaQuery.of(context).size.height*0.06,
              width: MediaQuery.of(context).size.width*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff2Ac9d7),
                    Color(0xffD247f7),   
                  ]
                )
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ),
                onPressed:()async {
                  await launchUrl(
                    Uri.parse("https://docs.google.com/document/d/17s0XbYiNRMpVw8cdx7cWZECVQxw1BQl7/edit?usp=sharing&ouid=101900076162085562703&rtpof=true&sd=true"),
                    mode: LaunchMode.externalNonBrowserApplication
                    );
                  
                },
                child: Center(
                  child: Text("RESUME", style: GoogleFonts.lato(color: Colors.white, fontSize: MediaQuery.of(context).size.width*0.01),),
                ),
              ),
            ),
         )

      ],
    );
  }
}
