// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> colorizeColors = [
    Color(0xffD247f7),
    Color(0xff2Ac9d7),
  ];

  static const colorizeTextStyle = TextStyle(
      fontSize: 35.0, fontFamily: 'Horizon', fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff052946),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff052946),
          elevation: 0,
          title: Text('PORTFOLIO'),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/1.jpg'),
                      maxRadius: 50,
                      minRadius: 20,
                    ),
                  ),
                  Text(
                    'Hi there! My name is',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  AnimatedTextKit(repeatForever: true, animatedTexts: [
                    ColorizeAnimatedText(
                      'Syed Ashir Ali',
                      speed: Duration(milliseconds: 700),
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
