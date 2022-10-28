// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';
import 'package:dev_icons/dev_icons.dart';

class DeskAbout extends StatefulWidget {
  const DeskAbout({super.key});

  @override
  State<DeskAbout> createState() => _DeskAboutState();
}

class _DeskAboutState extends State<DeskAbout> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String paragraph =
        "I am Syed Ashir Ali, App developer from Karachi, Pakistan. I have 1.5 year experience in Flutter mobile application development";
    return Sizer(
      builder: (context, orientation, deviceType) {
        return SizedBox(
          height: height*1,
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "ABOUT ME",
                style: GoogleFonts.lato(
                    fontSize: size * 0.025, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: size * 0.05),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "BIOGRAPHY",
                          style: GoogleFonts.lato(
                              fontSize: size * 0.02, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: height * 0.4,
                          width: size * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff041d31)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: size * 0.02, horizontal: size * 0.01),
                            child: Text(
                              paragraph,
                              style: GoogleFonts.aBeeZee(fontSize: size * 0.015),
                              textAlign: TextAlign.justify,
                              
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "INFORMATION",
                          style: GoogleFonts.lato(
                              fontSize: size * 0.02, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: height * 0.4,
                          width: size * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff041d31)),
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size * 0.02, horizontal: size * 0.01),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Information(field: "Name:   ", info: "Syed Ashir Ali"),
                                  Information(field: "Address:   ", info: "Karachi, Pakistan"),
                                  Information(field: "Qualification:   ", info: "BSCS"),
                                  Information(field: "Email:   ", info: "syedashir07@gmail.com"),
                                  Information(field: "Phone:   ", info: "+923353226549")
                                ],
                              )),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "SKILLS",
                          style: GoogleFonts.lato(
                              fontSize: size * 0.02, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: height * 0.4 - 2,
                          width: size * 0.25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xff041d31)),
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size * 0.02, horizontal: size * 0.01),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Skills(
                                        icon: DevIcons.flutterPlain, color: const Color(0xff2ab5f5), name: "Flutter",
                                      ),
                                      Skills(
                                        icon: DevIcons.dartPlain,color: const Color(0xff04599c),name: "Dart",
                                      ),
                                      Skills(
                                        icon: DevIcons.firebasePlain,color: const Color(0xffffca2b),name: "Firebase",
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Skills(
                                        icon: DevIcons.html5Plain,color: const Color(0xffec5923), name: "Html 5",
                                      ),
                                      Skills(
                                        icon: DevIcons.css3Plain,color: const Color(0xff264ee4),name: "CSS",
                                      ),
                                      Skills(
                                        icon: DevIcons.cplusplusPlain,color: const Color(0xff014284),name: "C++",
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class Information extends StatelessWidget {
  String field;
  String info;
   Information({super.key, required this.field, required this.info});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Row(
      children: [
        GradientText(
          field,
          colors: const [
            Color(0xff2Ac9d7),
            Color(0xffD247f7),
          ],
          style: GoogleFonts.lato(
              fontSize: size * 0.015, fontWeight: FontWeight.bold),
        ),
        Text(info, style: GoogleFonts.lato(fontSize: size * 0.015))
      ],
    );
  }
}

class Skills extends StatelessWidget {
  String name;
  IconData icon;
  Color color;
  Skills({super.key, required this.icon, required this.color, required this.name});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
            height: height * 0.08,
            width: size * 0.05,
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
              size: size * 0.02,
            )),
            const SizedBox(height: 5,),
            Text(name)
      ],
    );
  }
}
