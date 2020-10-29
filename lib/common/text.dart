

import 'package:TestApp/common/color.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color color;
  final bool isTap;
  final Function onTap;
  final double fontsize;
  final FontWeight weight;


  
  const CustomText({
    Key key, 
    this.title, 
    this.color=black100, 
    this.isTap, 
    this.onTap, 
    this.fontsize,
    this.weight=FontWeight.w400, 
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return isTap?
      GestureDetector(
        onTap: onTap,
        child: new Text(
          title,
          style: TextStyle(
            color: color,
            fontWeight: weight,
          ),
        ),
      )
      :Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: fontsize,
          fontWeight: weight,
        ),
      );
  }
}