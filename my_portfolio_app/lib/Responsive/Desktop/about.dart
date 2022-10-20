import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/Widgets/desktop_top_bar.dart';
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
    String paragraph= "Hi, my name is Syed Ashir Ali. I live in Karachi. I'm a computer science student. Currently I'm doing Bachelors in computer science from Karachi University. ";
    return Sizer(builder:(context, orientation, deviceType) {
      return Column(
            children: [
              
              Padding(
                padding: EdgeInsets.symmetric(vertical: size*0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("ABOUT ME", style: GoogleFonts.lato(fontSize: size*0.02, color: Colors.white, fontWeight: FontWeight.bold),),
                        SizedBox(height: size*0.02,),
                        Container(
                          height: MediaQuery.of(context).size.height*0.5,
                          width: MediaQuery.of(context).size.width*0.3,
                          
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(-5,-5),
                                blurRadius: 10,
                                spreadRadius: 3,
                                color: Color(0xff2Ac9d7),
                              ), 
                              BoxShadow(
                                offset: Offset(5, 5),
                                blurRadius: 10,
                                spreadRadius: 3,
                                color: Color(0xffD247f7),
                              )
                            ],
                            color: Color(0xff041d31),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            child: Text(paragraph,
                            style: GoogleFonts.balooBhai2(fontSize: 4.sp),),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("SKILLS", style: GoogleFonts.lato(fontSize: size*0.02, color: Colors.white, fontWeight: FontWeight.bold),),
                        SizedBox(height: size*0.02,),
                         Container(
                          height: MediaQuery.of(context).size.height*0.5,
                          width: MediaQuery.of(context).size.width*0.3,
                          
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(-5,-5),
                                blurRadius: 10,
                                spreadRadius: 3,
                                color: Color(0xff2Ac9d7),
                              ), 
                              BoxShadow(
                                offset: Offset(5, 5),
                                blurRadius: 10,
                                spreadRadius: 3,
                                color: Color(0xffD247f7),
                              )
                            ],
                            color: Color(0xff041d31),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            child: Text(paragraph,
                            style: GoogleFonts.balooBhai2(fontSize: 4.sp),),
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
