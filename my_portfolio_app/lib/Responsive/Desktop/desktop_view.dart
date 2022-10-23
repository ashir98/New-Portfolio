import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_app/Responsive/Desktop/about.dart';
import 'package:my_portfolio_app/Responsive/Desktop/footer.dart';
import 'package:my_portfolio_app/Responsive/Desktop/home_page.dart';
import 'package:my_portfolio_app/Responsive/Desktop/projects.dart';
import 'package:my_portfolio_app/Widgets/appBar.dart';
import 'package:my_portfolio_app/Widgets/buletted_text.dart';
import 'package:my_portfolio_app/Widgets/desktop_top_bar.dart';
import 'package:my_portfolio_app/Widgets/social_media_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  List pages = [
    DeskHomePage(),    
    About(),
    Projects(),
    Footer()
  ];


  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(seconds: 2));
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


 final ItemScrollController itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return MaterialApp(
          darkTheme: ThemeData.dark(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          home: Scaffold(      
            backgroundColor: const Color(0xff052946),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(size*0.05),
              child: CustomAppBar(itemScrollController: itemScrollController),
            ),
            body: ScrollablePositionedList.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: pages.length,
              itemScrollController: itemScrollController,
              itemBuilder:(context, index) => pages[index],      
            )
          ));
  }
}


