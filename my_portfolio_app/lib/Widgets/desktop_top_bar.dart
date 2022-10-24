import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/Responsive/Desktop/d_about.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

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
          SizedBox(width: size*0.010,),


          

          

          TextButton(
            onPressed:() => Navigator.push(context, MaterialPageRoute(builder: (context)=>const About())),
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

          Container(
            height: MediaQuery.of(context).size.height*0.05,
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
          )

          
        ],
      ),
    );
  }
}