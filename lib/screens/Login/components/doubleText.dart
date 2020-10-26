import 'package:TestApp/common/color.dart';
import 'package:TestApp/common/util.dart';
import 'package:flutter/material.dart';

class DoubleText extends StatelessWidget {
  final String title;
  final  String subTitle;

  const DoubleText({
    Key key, 
    this.title, 
    this.subTitle
    }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  new Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new  Text(
          title,
           style: new TextStyle(
          fontSize: hp(26),
          fontWeight: FontWeight.w700,
          color: black100
        ),
        ),
        SizedBox(height:hp(8)),
        new Text(
          subTitle,
          style: TextStyle(
            fontSize: hp(14),
            color: black100
            ),
        )
      ],
    );
  }
}