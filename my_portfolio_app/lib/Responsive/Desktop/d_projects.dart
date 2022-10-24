
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hovering/hovering.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';
class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}



class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height*1,
      child: Column(
        children: [
          Text(
                "MY PROJECT SHOWCASE",
                style: GoogleFonts.lato(
                    fontSize: width * 0.025, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height*0.05,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            height: height*0.7 ,
            width: width*1,
            
            child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: CarouselSlider(
                items: [

                  CarouselItems(image: "images/p1.jpg", name: "Ecommerce App",about: "Ecommerce app with an attractive UI and Firebase authentication system ",sourceLink: "https://github.com/ashir98/shopping_app",),
                  CarouselItems(image: "images/p2.jpg", name: "AshWalls",about: "An amazing wallpaper app with Material 3 UI",sourceLink: "https://github.com/ashir98/AshWalls",),
                  CarouselItems(image: "images/p3.jpg", name: "WhatsApp Clone",about: "WhatsApp clone with lite and dark theme mode",sourceLink: "https://github.com/ashir98/WhatsApp_clone_UI",),
                  CarouselItems(image: "images/p4.jpg", name: "Covid-19 Tracker",about: 'Covid-19 tracker with global covid cases statistics',sourceLink: "https://github.com/ashir98/covid19_tracker",),
                  CarouselItems(image: "images/p5.jpg", name: "Quiz App",about: 'A Quiz app with an interactivea user interface',sourceLink: "https://github.com/ashir98/AY_Quiz_App",),
                  
                   
                   
                ],
                options: CarouselOptions(
                  autoPlayCurve: Curves.easeIn,
                  enlargeCenterPage: true,
                  viewportFraction: 0.5,
                  height: height*0.7,
                  autoPlay: true

                ),
              ),
            ),
          )  

          
        ],
      ),
    );
  }
}


class CarouselItems extends StatefulWidget {
  String about;
  String image;
  String name;
  String sourceLink;
  CarouselItems({super.key, required this.image, required this.name, required this.about, required this.sourceLink});

  @override
  State<CarouselItems> createState() => _CarouselItemsState();
}

class _CarouselItemsState extends State<CarouselItems> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
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
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: HoverCrossFadeWidget(
                          cursor: SystemMouseCursors.click,
                          duration: const Duration(milliseconds: 100),
                          secondChild: Container(
                              height: height*0.7  ,
                              width: width*1,
                              decoration: const BoxDecoration(
                                color: Color(0xff041d31),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)

                                ),
                                

                                
                              ),
                              child: Center(
                                child: GestureDetector(
                                  onTap: ()async{
                                    await launchUrl(
                                      Uri.parse(widget.sourceLink)
                                    );
                                  },
                                  child: Container(
                                    height: height*0.07,
                                    width: width*0.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff2Ac9d7),Color(0xffD247f7),
                                        ],
                                      )
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("Source code",style: GoogleFonts.lato(fontSize: width*0.01),),
                                          Icon(FontAwesomeIcons.githubAlt, size: width*0.015,)
                                        ],
                                      ),
                                    )
                                  ),
                                ),
                              ),
                            ),

                          firstChild: Container(
                            height:height*0.7 ,
                            width: width*1,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)
                              ),
                              color: const Color(0xff041d31),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(widget.image)
                              )
                            ),
                            
                            
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff041d31),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                            )
                          ),
                          child: Center(
                            child: Padding(
                              padding:  const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GradientText(
                                    widget.name,
                                    colors: const [Color(0xff2Ac9d7),Color(0xffD247f7)], 
                                    style: GoogleFonts.lato(fontSize: width*0.013), 
                                  ),
                                  Text(widget.about, style: GoogleFonts.lato(fontSize: width*0.008),)
                                ],
                              ),
                            ),
                          ),
                        
                          
                        ),
                      )
                    ],
                  ),
                ),
              );
  }
}
