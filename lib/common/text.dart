

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color color;
  final bool isTap;
  final Function onTap;
  final double fontsize;



  
  const CustomText({
    Key key, 
    this.title, 
    this.color, 
    this.isTap, 
    this.onTap, 
    this.fontsize, 
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return isTap?
      InkWell(
        onTap: onTap,
        child: new Text(
          title,
          style: TextStyle(color: color,
),
        ),
      )
      :Text(
        title,
  
        style: TextStyle(
          color: color,
          fontSize: fontsize,
          
          // fontFamily: 'Graphik-Bold'
        ),
      );
  }
}