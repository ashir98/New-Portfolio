// ignore: duplicate_ignore
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';


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
     double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
                    height: height*0.2,
                    width: width*0.145,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color
                    ),
                    child: Center(
                      child: Icon(icon, size: width*0.08,color: Colors.white,),
                    ),
                    
                  );
  }
}
