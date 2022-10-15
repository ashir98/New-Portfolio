import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/Widgets/buletted_text.dart';
import 'package:my_portfolio_app/Widgets/desktop_top_bar.dart';
import 'package:my_portfolio_app/Widgets/social_media_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(seconds: 3));
    Timer(const Duration(milliseconds: 400), () => _animationController.forward());
    super.initState();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
          darkTheme: ThemeData.dark(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: const Color(0xff052946),
            body: SingleChildScrollView(
              ///MAIN COLUMN OF THE WEBPAGE
              child: Column(
                children: [
                  ///TOPBAR OF THE WEBPAGE
                  const DesktopTopBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ///NAME AND ABOUT COLUMN
                        FadeTransition(
                          opacity: _animationController,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FadeTransition(
                                opacity: _animationController,
                                child: Text(
                                  "Hi, my name is",
                                  style: GoogleFonts.lato(
                                      fontSize: size * 0.02,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              GradientText(
                                "Syed Ashir Ali",
                                colors: const [
                                  Color(0xff2Ac9d7),
                                  Color(0xffD247f7),
                                ],
                                style: GoogleFonts.lato(fontSize: size * 0.050),
                              ),
                              FadeTransition(
                                opacity: _animationController,
                                child: Text(
                                  "I build things for App and Web.",
                                  style: GoogleFonts.lato(
                                      fontSize: size * 0.03,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: size * 0.02,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BulletedText(text: "App Developer"),
                                  BulletedText(text: "Flutter Enthusiast"),
                                  BulletedText(text: "Computer Science Student")
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    SocialButton(
                                        icon: FontAwesomeIcons.facebook,
                                        color: const Color(0xff3b5998)),
                                    SocialButton(
                                        icon: FontAwesomeIcons.whatsapp,
                                        color: Color(0xff25D366),
                                    ),
                                    SocialButton(
                                        icon: FontAwesomeIcons.linkedinIn,
                                        color: Color(0xff0072b1),
                                    ) ,    
                                    SocialButton(
                                        icon: FontAwesomeIcons.youtube,
                                        color: Colors.red),
                                          
                                    SocialButton(
                                        icon: FontAwesomeIcons.github,
                                        color: Colors.black),
                                     
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        ///CIRCULAR AVATAR PICTURE
                        FadeTransition(
                          opacity: _animationController,
                          child: Container(
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffD247f7),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(10, 0)),
                                BoxShadow(
                                    color: Color(0xff2Ac9d7),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(-10, 0)),
                              ],
                              shape: BoxShape.circle,
                            ),
                            height: size * 0.25,
                            width: size * 0.25,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: size * 0.09,
                                backgroundImage:  const AssetImage("images/1.jpg"),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
    });
  }
}
