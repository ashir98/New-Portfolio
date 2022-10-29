import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MobileProjects extends StatefulWidget {
  const MobileProjects({super.key});

  @override
  State<MobileProjects> createState() => _MobileProjectsState();
}

class _MobileProjectsState extends State<MobileProjects> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: height*0.05,),
        Text("PROJECTS SHOWCASE", style: GoogleFonts.lato(color: Colors.white, fontSize:30, fontWeight: FontWeight.bold),),
        SizedBox(height: height*0.02,),
        
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.9,
            aspectRatio: 9/15,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 10)
          ),
          items: [
            CarouselItem(
              name: "Ecommerce App",
              image1: "images/mobile/ec1.jpg",
              image2: "images/mobile/ec2.jpg",
              image3: "images/mobile/ec3.jpg",
            ),
            CarouselItem(
              name: "AshWalls",
              image1: "images/mobile/aw1.jpg",
              image2: "images/mobile/aw2.jpg",
              image3: "images/mobile/aw3.jpg",
            ),
            CarouselItem(
              name: "WhatsApp clone",
              image1: "images/mobile/wap1.jpg",
              image2: "images/mobile/wap2.jpg",
              image3: "images/mobile/wap3.jpg",
            ),
            CarouselItem(
              name: "Covid Tracker",
              image1: "images/mobile/ct1.jpg",
              image2: "images/mobile/ct2.jpg",
              image3: "images/mobile/ct3.jpg",
            ),
            CarouselItem(
              name: "Quiz App",
              image1: "images/mobile/qa1.jpg",
              image2: "images/mobile/qa2.jpg",
              image3: "images/mobile/qa3.jpg",
            )
            
            
          ],
        )
      ],
    );
  }
}

class CarouselItem extends StatefulWidget {
  String name, image1, image2, image3;
   CarouselItem({super.key, required this.name, required this.image1, required this.image2, required this.image3});

  @override
  State<CarouselItem> createState() => _CarouselItemState();
}

class _CarouselItemState extends State<CarouselItem> {
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    bool ontap = true;
    return Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff041d31),
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
                  ]
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)
                          )
                        ),
                        
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                          ),
                          child: ImageSlideshow(
                            autoPlayInterval: 3000,
                            isLoop: true,
                            width: double.infinity,
                            children: [
                              Image.asset(widget.image1, fit: BoxFit.fill,),
                              Image.asset(widget.image2, fit: BoxFit.fill),
                              Image.asset(widget.image3, fit: BoxFit.fill),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          )
                        ),
                        child: Center(
                          child: GradientText(
                            widget.name,
                            colors: [Color(0xff2Ac9d7),Color(0xffD247f7)],
                            style: GoogleFonts.lato(fontSize: width*0.055, fontWeight: FontWeight.bold),
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