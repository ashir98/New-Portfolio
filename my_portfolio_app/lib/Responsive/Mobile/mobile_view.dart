import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/Responsive/Mobile/m_about.dart';
import 'package:my_portfolio_app/Responsive/Mobile/m_homepage.dart';
import 'package:my_portfolio_app/Widgets/buletted_text.dart';
import 'package:my_portfolio_app/Widgets/social_media_button.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sizer/sizer.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final ItemScrollController itemScrollController = ItemScrollController();

  List pages = [
    MobileHomePage(),
    MobileAbout()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: const Color(0xff052946),

              ///APP BAR
              appBar: AppBar(
                toolbarHeight: 10.h,
                title: GradientText(
                  "Ashir.",
                  colors: const [
                    Color(0xff2Ac9d7),
                    Color(0xffD247f7),
                  ],
                  style: GoogleFonts.lato(fontSize:30, fontWeight: FontWeight.bold),
                ),
                elevation: 0,
                backgroundColor:const Color(0xff052946) ,
              ),
              endDrawer: Drawer(
                backgroundColor: Color(0xff052946),
              ),

              ///BODY
              body: ScrollablePositionedList.builder(
                itemScrollController: itemScrollController,
                shrinkWrap: true,
                itemCount: pages.length,
                itemBuilder: (context, index) => pages[index],
              )
            ));
      },
    );
  }
}
