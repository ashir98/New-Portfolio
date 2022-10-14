import 'package:flutter/material.dart';

class RespnsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget desktopView;
  const RespnsiveLayout({super.key, required this.desktopView, required this.mobileView});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 800){
          return mobileView;
        }else{
          return desktopView;
        }
      },
    );
  }
}
