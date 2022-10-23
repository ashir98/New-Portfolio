import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height*1,
      child: Column(
        children: [
          Text(
                "MY PROJECT SHOWCASE",
                style: GoogleFonts.lato(
                    fontSize: size * 0.025, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height*0.05,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            height: 550,
            width: 1500,
            
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                items: [

                  CarouselItems(image: "images/p1.jpg", name: "Ecommerce App",about: "Ecommerce app with an attractive UI and Firebase authentication system ",),
                  CarouselItems(image: "images/p2.jpg", name: "AshWalls",about: "An amazing wallpaper app with Material 3 UI",),
                  CarouselItems(image: "images/p3.jpg", name: "WhatsApp Clone",about: "WhatsApp clone with lite and dark theme mode",),
                  CarouselItems(image: "images/p4.jpg", name: "Covid-19 Tracker",about: 'Covid-19 tracker with global covid cases statistics',),
                  CarouselItems(image: "images/p5.jpg", name: "Quiz App",about: 'A Quiz app with an interactivea user interface',),
                  
                   
                   
                ],
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  viewportFraction: 0.5,
                  height: 600,
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
  CarouselItems({super.key, required this.image, required this.name, required this.about});

  @override
  State<CarouselItems> createState() => _CarouselItemsState();
}

class _CarouselItemsState extends State<CarouselItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
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
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          height:600,
                          width: 900,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
                            ),
                            color: Color(0xff041d31),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(widget.image)
                            )
                          ),
                          
                          
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff041d31),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                            )
                          ),
                          child: Center(
                            child: Padding(
                              padding:  EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GradientText(
                                    widget.name,
                                    colors: [Color(0xff2Ac9d7),Color(0xffD247f7)], 
                                    style: GoogleFonts.lato(fontSize: 20), 
                                  ),
                                  Text(widget.about)
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




// Container(
//                 height:300,
//                 width: 600,
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                   borderRadius: BorderRadius.circular(20),
//                   image: DecorationImage(
//                     fit: BoxFit.fill,
//                     image: AssetImage("images/p3.jpg"))
//                 ),