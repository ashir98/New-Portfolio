import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

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
          color: color,
        ),
        height: MediaQuery.of(context).size.height*0.06,
        width: MediaQuery.of(context).size.width*0.055,
        child: IconButton(
          style: IconButton.styleFrom(
            shadowColor: Colors.transparent
          ),
          onPressed:(){},
          icon: Icon(icon,  color: Colors.white,size: MediaQuery.of(context).size.width*0.02,),
        ),
      ),
    );
  }
}

class SocialButtons extends StatelessWidget {
 IconData icon;
 Color color;
 SocialButtons({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 6.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color
      ),
      child: IconButton(
        onPressed: (){},
        icon: Icon(icon, color: Colors.white, size: 3.5.h,),
      ),
    );
  }
}
