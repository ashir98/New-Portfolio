import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/Widgets/buletted_text.dart';
import 'package:my_portfolio_app/Widgets/social_media_button.dart';
import 'package:sizer/sizer.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: const Color(0xff052946),

              ///APP BAR
              appBar: AppBar(
                title: GradientText(
                  "Ashir.",
                  colors: const [
                    Color(0xff2Ac9d7),
                    Color(0xffD247f7),
                  ],
                  style: GoogleFonts.lato(fontSize: 4.h, fontWeight: FontWeight.bold),
                ),
                elevation: 0,
                backgroundColor:const Color(0xff052946) ,
              ),

              ///BODY
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, my name is",style: GoogleFonts.lato(
                            fontSize: 3.h,
                            color: Colors.white
                          ),),
                          SizedBox(height: 1.h,),
                          GradientText(
                            "Syed Ashir Ali",
                            colors: const [
                              Color(0xff2Ac9d7),
                              Color(0xffD247f7),
                            ],
                            style: GoogleFonts.lato(fontSize: 6.5.h, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height:1.h),
                          Text("I build things for App and Web.", style: GoogleFonts.lato(fontSize: 3.h, fontWeight: FontWeight.bold, color: Colors.white),)
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h,),
              
                    Center(
                      child: Container(
                        
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff2Ac9d7),
                              blurRadius: 10,
                              spreadRadius: 4,
                              offset: Offset(-6, -1)
                            ),
                            BoxShadow(
                              color: Color(0xffD247f7),
                              blurRadius: 10,
                              spreadRadius: 4,
                              offset: Offset(6,1)
                            )
                          ]
                        ),
                        child: CircleAvatar(
                          radius: 10.h,
                          backgroundImage: const AssetImage("images/1.jpg", ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h,),


                    BulletText(text: "App developer",),
                    BulletText(text: "Flutter Enthusiast"),
                    BulletText(text: "Computer Science Student"),

                    SizedBox(
                      height: 4.h,
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialButtons(
                      icon: FontAwesomeIcons.facebook,
                      color: Color(0xff3b5998),
                    ),
                    SocialButtons(
                      icon: FontAwesomeIcons.whatsapp,
                      color: const Color(0xff25D366),
                    ),
                    SocialButtons(
                      icon: FontAwesomeIcons.linkedinIn,
                      color: Color(0xff0072b1),
                    ),
                    SocialButtons(
                      icon: FontAwesomeIcons.youtube,
                      color: Colors.red,
                    ), 
                    SocialButtons(
                      icon: FontAwesomeIcons.github,
                      color: Colors.black,
                    )
                      ],
                    )


                    



                    

                    
              
              
                    
                    
                  ],
                ),
              ),
            ));
      },
    );
  }
}
