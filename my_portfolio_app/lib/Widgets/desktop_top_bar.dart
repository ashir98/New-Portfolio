import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DesktopTopBar extends StatefulWidget {
  const DesktopTopBar({super.key});

  @override
  State<DesktopTopBar> createState() => _DesktopTopBarState();
}

class _DesktopTopBarState extends State<DesktopTopBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GradientText(
            'Ashir.',
            colors: const [
              Color(0xff2Ac9d7),
              Color(0xffD247f7),          
            ],
            style: GoogleFonts.lato(
              fontSize: size*0.025,
              fontWeight: FontWeight.bold 
            ),
          ),
          SizedBox(width: size*0.001,),


          TextButton(
            onPressed: (){},
            child: GradientText(
            "Home",
            colors: const [
              Color(0xff2Ac9d7),
              Color(0xffD247f7),          
            ],
            style: GoogleFonts.lato(
              fontSize: size*0.015,
              fontWeight: FontWeight.bold,
              color:const Color(0xff2Ac9d7)
            ),
          ),
          ),

          

          TextButton(
            onPressed: (){},
            child: GradientText(
              "About",
              colors: const [
                Color(0xff2Ac9d7),
                Color(0xffD247f7),          
              ],
              style: GoogleFonts.lato(
                fontSize: size*0.015,
                fontWeight: FontWeight.bold,
                color: const Color(0xff2Ac9d7)
              ),
            ),
          ),

          TextButton(
            onPressed: (){},
            child: GradientText(
              "Projects",
              colors: const [
                Color(0xff2Ac9d7),
                Color(0xffD247f7),          
              ],
              style: GoogleFonts.lato(
                fontSize: size*0.015,
                fontWeight: FontWeight.bold,
                color: const Color(0xff2Ac9d7)
              ),
            ),
          ),

          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              )
            ),
            child: const Text("Resume"),
          )
        ],
      ),
    );
  }
}