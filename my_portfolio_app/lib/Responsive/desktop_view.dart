import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            
            body: Column(
              children: [
                Padding(
                  padding:  const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      GradientText("Ashir.", colors: const [Color(0xff2Ac9d7),Color(0xffD247f7),] ,
                      style: GoogleFonts.lato(fontSize: MediaQuery.of(context).size.width*0.02, fontWeight: FontWeight.bold)),
                      
                      const SizedBox(),
                      
                      Text("Home",style: GoogleFonts.lato(color: const Color(0xff2Ac9d7), fontWeight: FontWeight.bold),),
                      Text("About",style: GoogleFonts.lato(color: const Color(0xff2Ac9d7),fontWeight: FontWeight.bold),),
                      Text("Contact",style: GoogleFonts.lato(color: const Color(0xff2Ac9d7),fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, I am",
                          style: GoogleFonts.lato(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GradientText("Syed Ashir Ali", colors:const [Color(0xff2Ac9d7),Color(0xffD247f7),], style: GoogleFonts.lato(
                      fontSize: MediaQuery.of(context).size.width*0.06
                     ),),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "I am a Flutter mobile application developer, Youtuber and Teacher",
                          style: GoogleFonts.grenze(
                              color: Colors.grey[800],
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.015),
                        ),

                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            
                            children:  [
                              Icon(FontAwesomeIcons.facebook,size: MediaQuery.of(context).size.width*0.20,),
                              SizedBox(width: 20,),
                              Icon(FontAwesomeIcons.github),
                              SizedBox(width: 20,),
                              Icon(FontAwesomeIcons.whatsapp),
                              SizedBox(width: 20,),
                              Icon(FontAwesomeIcons.linkedin)
                            ],
                          ),
                        )



                        
                      ],
                    ),
                    CircleAvatar(
                      
                      radius: MediaQuery.of(context).size.width * 0.10,
                      backgroundImage: const AssetImage("images/1.jpg"),
                    ),
                  ],
                )
              ],
            ),
          ));
    });
  }
}
