import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

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
        SizedBox(height: height*0.02,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:10),
          child: Container(
            width: double.infinity,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff041d31),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(paragraph,style: GoogleFonts.aBeeZee(fontSize: height*0.04, color: Colors.white),),
            ),
          ),
        ),
        SizedBox(height: height*0.05,),
        Text("INFORMATION", style: GoogleFonts.lato(color: Colors.white, fontSize:30),),
        SizedBox(height: height*0.02,),
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
              padding: const EdgeInsets.all(20),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InformationText(field: "Name: ",info: "Syed Ashir Ali",size: width*0.075,),
                  InformationText(field: "From: ",info: "Karachi, Pakistan",size: width*0.075,),
                  InformationText(field: "Qualification: ",info: "BSCS",size: width*0.07,),
                  InformationText(field: "Email: ",info: "syedashir07@gmail.com",size: width*0.063,),
                  InformationText(field: "Phone: ",info: "03353226549",size: width*0.07,),
                ],
              )
            ),
          ),
        ),
        SizedBox(height: height*0.05,),
        Text("SKILLS", style: GoogleFonts.lato(color: Colors.white, fontSize:30),),
        SizedBox(height: height*0.02,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:10),
          child: Container(
            width: double.infinity,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff041d31),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Skill(icon: DevIcons.flutterPlain, color: const Color(0xff2ab5f5), name: "Flutter",),
                      Skill(icon: DevIcons.dartPlain,color: const Color(0xff04599c),name: "Dart",),
                      Skill(icon: DevIcons.firebasePlain,color: const Color(0xffffca2b),name: "Firebase",)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Skill(icon: DevIcons.html5Plain,color: const Color(0xffec5923), name: "Html 5",),
                      Skill(icon: DevIcons.css3Plain,color: const Color(0xff264ee4),name: "CSS",),
                      Skill(icon: DevIcons.cplusplusPlain,color: const Color(0xff014284),name: "C++",)
                    ],
                  )
                ],
              )
            ),
          ),
        ),
       
      ],
    );
  }
}

class InformationText extends StatelessWidget {
  String field;
  String info;
  double size;
  InformationText({super.key, required this.field, required this.info, required this.size});

  @override
  Widget build(BuildContext context) {
        double width = MediaQuery.of(context).size.width;
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
                    
                    children: [
                      GradientText(
                        field,
                        colors: [Color(0xff2Ac9d7),Color(0xffD247f7)],
                        style: GoogleFonts.lato(fontSize: width*0.075, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Text(
                          info,
                          style: GoogleFonts.lato(fontSize: size, color: Colors.white),
                        ),
                      )
                    ],
                  );
  }
}



class Skill extends StatelessWidget {
  String name;
  IconData icon;
  Color color;
  Skill({super.key, required this.icon, required this.color, required this.name});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
            height: height * 0.15,
            width: size * 0.15,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(5, 5),
                    color: Color(0xff2Ac9d7),
                    blurRadius: 10,
                    spreadRadius: 3),
                BoxShadow(
                    offset: Offset(-5, -5),
                    color: Color(0xffD247f7),
                    blurRadius: 10,
                    spreadRadius: 3)
              ],
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: color,
              size: size * 0.08,
            )),

      ],
    );
  }
}
