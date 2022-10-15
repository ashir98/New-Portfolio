import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SocialButton extends StatelessWidget {
  IconData icon;
  Color color;

  SocialButton({super.key, required this.icon, required this.color});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color
        ),
        height: MediaQuery.of(context).size.height*0.06,
        width: MediaQuery.of(context).size.width*0.055,
        child: Icon(icon, color: Colors.white,size: MediaQuery.of(context).size.width*0.02,),
      ),
    );
  }
}
