import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/Widgets/buletted_text.dart';
import 'package:my_portfolio_app/Widgets/social_media_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class DeskHomePage extends StatefulWidget {
  const DeskHomePage({super.key});

  @override
  State<DeskHomePage> createState() => _DeskHomePageState();
}

class _DeskHomePageState extends State<DeskHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Sizer(builder:(context, orientation, deviceType) {
      return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.1),
      child: SizedBox(
        height: height*0.7,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ///NAME AND ABOUT COLUMN
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, my name is",
                  style: GoogleFonts.lato(
                      fontSize: 8.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                GradientText(
                  "SYED ASHIR ALI",
                  colors: const [
                    Color(0xff2Ac9d7),
                    Color(0xffD247f7),
                  ],
                  style: GoogleFonts.lato(fontSize: 15.sp,  fontWeight: FontWeight.bold),
                ),
                Text(
                  "I build things for App and Web.",
                  style: GoogleFonts.lato(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height*0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BulletedText(text: "App Developer"),
                    BulletedText(text: "Flutter Enthusiast"),
                    BulletedText(text: "Computer Science Student")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SocialButton(
                          icon: FontAwesomeIcons.facebook,
                          color: const Color(0xff3b5998)),
                      SocialButton(
                          icon: FontAwesomeIcons.whatsapp,
                          color: const Color(0xff25D366),
                      ),
                      SocialButton(
                          icon: FontAwesomeIcons.linkedinIn,
                          color: const Color(0xff0072b1),
                      ) ,    
                      SocialButton(
                          icon: FontAwesomeIcons.youtube,
                          color: Colors.red),
                            
                      SocialButton(
                          icon: FontAwesomeIcons.github,
                          color: Colors.black),
                       
                    ],
                  ),
                )
              ],
            ),
      
            ///CIRCULAR AVATAR PICTURE
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffD247f7),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(10, 0)),
                      BoxShadow(
                          color: Color(0xff2Ac9d7),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(-10, 0)),
                    ],
                    shape: BoxShape.circle,
                  ),
                  height: height * 0.5,
                  width: width * 0.25,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: CircleAvatar(
                        radius: width * 1,
                        backgroundImage:  const AssetImage("images/1.jpg"),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
    },);
  }
}