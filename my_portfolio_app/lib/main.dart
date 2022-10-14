// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio_app/Responsive/desktop_view.dart';
import 'package:my_portfolio_app/Responsive/mobile_view.dart';
import 'package:my_portfolio_app/Responsive/responsive_layout.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatefulWidget {
  const MyPortfolioApp({Key? key}) : super(key: key);

  @override
  State<MyPortfolioApp> createState() => _MyPortfolioAppState();
}

class _MyPortfolioAppState extends State<MyPortfolioApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RespnsiveLayout(desktopView: DesktopView(), mobileView: MobileView()),
    );
  }
}
