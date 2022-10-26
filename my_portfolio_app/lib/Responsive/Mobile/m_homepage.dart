import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/Widgets/buletted_text.dart';
import 'package:my_portfolio_app/Widgets/social_media_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key});

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> with SingleTickerProviderStateMixin {

  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    );
    _animationController.forward();
    setState(() {
      
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    _animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
              Padding(
                      padding:  EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff2Ac9d7),
                        offset: Offset(-6, -1),
                        blurRadius: 10,
                        spreadRadius: 3
                      ),
                      BoxShadow(
                        color: Color(0xffD247f7),
                        offset: Offset(6, 1),
                        blurRadius: 10,
                        spreadRadius: 3
                      )
                    ]
                  ),
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: const AssetImage("images/1.jpg"),
                      minRadius: 40,
                      maxRadius: 70,
                    ),
                  ),
                ), 
              ),
              
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.03,vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi, my name is", style: GoogleFonts.lato(
                      fontSize: width*0.07,
                      color: Colors.white,
                      fontWeight: FontWeight.bold 
                     ),
                     overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: height*0.01,),
                    GradientText(
                      
                      "SYED ASHIR ALI",
                      style: GoogleFonts.lato(fontSize: width*0.125, fontWeight: FontWeight.bold),
                      colors: [Color(0xff2Ac9d7),Color(0xffD247f7)],
                    ),
                    SizedBox(height: 0.01,),
                    Text("I build things for App and Web",style: GoogleFonts.lato(fontSize: width*0.07, color: Colors.white,fontWeight: FontWeight.bold),)
                   
                  ],
                ),
              ),
              SizedBox(height: height*0.03,),
              FadeTransition(
                opacity: _animationController,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*0.03,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [                 
                      Text("\u2022 App Developer", style:GoogleFonts.lato(color: Colors.grey, fontSize: width*0.075),),
                      SizedBox(height: height*0.01,),
                      Text("\u2022 Flutter Enthusiast", style:GoogleFonts.lato(color: Colors.grey, fontSize: width*0.075),),
                      SizedBox(height: height*0.01,),
                      Text("\u2022 Computer Science Student", style:GoogleFonts.lato(color: Colors.grey, fontSize: width*0.075),),            
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 SocialButtons(
                          icon: FontAwesomeIcons.facebookF,
                          color: const Color(0xff3b5998)),
                      SocialButtons(
                          icon: FontAwesomeIcons.whatsapp,
                          color: const Color(0xff25D366),
                      ),
                      SocialButtons(
                          icon: FontAwesomeIcons.linkedinIn,
                          color: const Color(0xff0072b1),
                      ) ,    
                      SocialButtons(
                          icon: FontAwesomeIcons.youtube,
                          color: Colors.red),
                            
                      SocialButtons(
                          icon: FontAwesomeIcons.githubAlt,
                          color: Colors.black),
                ],
              )
              
            ],
          );
      },
    );
  }
}


























// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:my_portfolio_app/Widgets/buletted_text.dart';
// import 'package:my_portfolio_app/Widgets/social_media_button.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';
// import 'package:sizer/sizer.dart';

// class MobileHomePage extends StatefulWidget {
//   const MobileHomePage({super.key});

//   @override
//   State<MobileHomePage> createState() => _MobileHomePageState();
// }

// class _MobileHomePageState extends State<MobileHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(builder:(context, orientation, deviceType) {
//       return Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SizedBox(
//           height: 100,
//           width: 100,
//           child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         SizedBox(
//                           height: 30,
//                         ),

//                         Center(
//                           child: Container(
                            
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Color(0xff2Ac9d7),
//                                   blurRadius: 10,
//                                   spreadRadius: 4,
//                                   offset: Offset(-6, -1)
//                                 ),
//                                 BoxShadow(
//                                   color: Color(0xffD247f7),
//                                   blurRadius: 10,
//                                   spreadRadius: 4,
//                                   offset: Offset(6,1)
//                                 )
//                               ]
//                             ),
//                             child: CircleAvatar(
//                               radius: 100,
//                               backgroundImage: const AssetImage("images/1.jpg", ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
                              
//                               Text("Hi, my name is",style: GoogleFonts.lato(
//                                 fontSize: 30,
//                                 color: Colors.white
//                               ),),
//                               SizedBox(height: 10,),
//                               GradientText(
//                                 "Syed Ashir Ali",
//                                 colors: const [
//                                   Color(0xff2Ac9d7),
//                                   Color(0xffD247f7),
//                                 ],
//                                 style: GoogleFonts.lato(fontSize: 65, fontWeight: FontWeight.bold),
//                               ),
//                               SizedBox(height:10),
//                               Text("I build things for App and Web.", style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 20,),
//                         BulletText(text: "App developer",),
//                         BulletText(text: "Flutter Enthusiast"),
//                         BulletText(text: "Computer Science Student"),

//                         SizedBox(
//                           height: 4.h,
//                         ),


//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             SocialButtons(
//                           icon: FontAwesomeIcons.facebook,
//                           color: const Color(0xff3b5998),
//                         ),
//                         SocialButtons(
//                           icon: FontAwesomeIcons.whatsapp,
//                           color: const Color(0xff25D366),
//                         ),
//                         SocialButtons(
//                           icon: FontAwesomeIcons.linkedinIn,
//                           color: const Color(0xff0072b1),
//                         ),
//                         SocialButtons(
//                           icon: FontAwesomeIcons.youtube,
//                           color: Colors.red,
//                         ), 
//                         SocialButtons(
//                           icon: FontAwesomeIcons.github,
//                           color: Colors.black,
//                         )
//                           ],
//                         ),


                        

//                       ],
//                     ),
//         ),
//       );
//     },);
//   }
// }