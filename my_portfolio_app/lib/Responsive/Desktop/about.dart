import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/Widgets/desktop_top_bar.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String paragraph= "I am Syed Ashir Ali, App developer from Karachi, Pakistan. I have 1.5 year experience in Flutter mobile application development";
    return Sizer(builder:(context, orientation, deviceType) {
      return Column(
            children: [
              Text("ABOUT ME" ,style: GoogleFonts.lato(fontSize: size*0.025, fontWeight: FontWeight.bold),),
              SizedBox(height: size*0.01,),            
              Padding(
                padding: EdgeInsets.symmetric(vertical: size*0.05),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("BIOGRAPHY", style: GoogleFonts.lato(fontSize: size*0.02, fontWeight: FontWeight.bold),),
                        Container(
                          height: height*0.4,
                          width: size*0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff041d31)
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: size*0.02, horizontal: size*0.01),
                            child: Text(paragraph, style: GoogleFonts.aBeeZee(fontSize: size*0.015),),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("INFORMATION", style: GoogleFonts.lato(fontSize: size*0.02, fontWeight: FontWeight.bold),),
                        Container(
                          height: height*0.4,
                          width: size*0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff041d31)
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: size*0.02, horizontal: size*0.01),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    GradientText("Name: ", colors: [Color(0xff2Ac9d7),Color(0xffD247f7),], style: GoogleFonts.lato(fontSize: size*0.015,fontWeight: FontWeight.bold),),
                                    Text("Syed Ashir Ali", style: GoogleFonts.lato(fontSize: size*0.015))
                                  ],
                                ),
                                Row(
                                  children: [
                                    GradientText("Address: ", colors: [Color(0xff2Ac9d7),Color(0xffD247f7),], style: GoogleFonts.lato(fontSize: size*0.015,fontWeight: FontWeight.bold),),
                                    Text("Karachi, Pakistan", style: GoogleFonts.lato(fontSize: size*0.015))
                                  ],
                                ),
                                Row(
                                  children: [
                                    GradientText("Qualification: ", colors: [Color(0xff2Ac9d7),Color(0xffD247f7),], style: GoogleFonts.lato(fontSize: size*0.015,fontWeight: FontWeight.bold),),
                                    Text("BSCS", style: GoogleFonts.lato(fontSize: size*0.015))
                                  ],
                                ),
                                Row(
                                  children: [
                                    GradientText("Email: ", colors: [Color(0xff2Ac9d7),Color(0xffD247f7),], style: GoogleFonts.lato(fontSize: size*0.015,fontWeight: FontWeight.bold),),
                                    Text("syedashir07@gmail.com", style: GoogleFonts.lato(fontSize: size*0.015))
                                  ],
                                ),
                                Row(
                                  children: [
                                    GradientText("Phone: ", colors: [Color(0xff2Ac9d7),Color(0xffD247f7),], style: GoogleFonts.lato(fontSize: size*0.015,fontWeight: FontWeight.bold),),
                                    SizedBox(width: size*0.008,),
                                    Text("+923353226549", style: GoogleFonts.lato(fontSize: size*0.015))
                                  ],
                                )
                              ],
                            )
                          ),
                        )
                        
                      ],
                    ),
                    Column(
                      children: [
                        Text("SKILLS", style: GoogleFonts.lato(fontSize: size*0.02, fontWeight: FontWeight.bold),),
                        Container(
                          height: height*0.4,
                          width: size*0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff041d31)
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: size*0.02, horizontal: size*0.01),
                            child: Column(children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage("images/flutter.png"),
                                    backgroundColor: Colors.grey,
                                    radius: size*0.025,
                                  ),
                                   Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage("images/dart.png",)
                                        )
                                    ),
                                    
                                  ),
                                ],
                              )
                            ],)
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          );
    },);
  }
}
