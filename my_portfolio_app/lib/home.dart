import 'package:flutter/material.dart';
import 'package:my_portfolio_app/Responsive/responsive_layout.dart';

import 'Responsive/Desktop/desktop_view.dart';
import 'Responsive/Mobile/mobile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RespnsiveLayout(desktopView: DesktopView(), mobileView: MobileView()),
    );
  }
}