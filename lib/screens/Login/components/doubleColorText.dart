import 'package:TestApp/common/color.dart';
import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/util.dart';
import 'package:flutter/material.dart';

class doubleColorText extends StatelessWidget {
  final String title;
  final String subTitle;

  const doubleColorText({Key key, this.title, this.subTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text.rich(
        TextSpan(
          text: title,
          style: TextStyle(
            color: black100,
            fontSize: hp(14),
          ),
        )
      ),
      SizedBox(width:wp(5)),
      new  CustomText(
        isTap:true,
        title: subTitle,
        color: Colors.redAccent,
      ),
     ],

      
    );
  }
}