import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Sizer(builder:(context, orientation, deviceType) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: GradientText("Ashir.", colors: const [Color(0xff2Ac9d7),Color(0xffD247f7),] ,
                      style: GoogleFonts.lato(fontSize: MediaQuery.of(context).size.width*0.08 , fontWeight: FontWeight.bold)),
          elevation: 0,
          backgroundColor: Colors.white,
          actionsIconTheme: const IconThemeData(color: Colors.black),
        ),

        drawer: Drawer(
          child: ListView(
            children: const [
              ListTile(
                title: Text("Home"),
              ),
              ListTile(
                title: Text("About"),
              ),
              ListTile(
                title: Text("Contact"),
              ),
            ],
          ),
        ),
     
        body: SafeArea(
          child: Column(
           
          
            
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Align(
                  
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                     Text("Hi, I am", style: GoogleFonts.lato( fontSize: MediaQuery.of(context).size.width*0.10,)),
                     const SizedBox(height: 10,),
                     GradientText("Syed Ashir Ali", colors:const [Color(0xffD247f7),Color(0xff2Ac9d7),], style: GoogleFonts.lato(
                      fontSize: MediaQuery.of(context).size.width*0.12
                     ),),
                     Text("I am a Flutter mobile application developer, Youtuber and Teacher" , style: GoogleFonts.lato(
                      fontSize: MediaQuery.of(context).size.width*0.04
                     ),)
                    
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                      radius: 10.h,
                      backgroundImage: const AssetImage("images/1.jpg"),
                    ),
            ],
          ),
        ),
      ),
    );
    },);
  }
}