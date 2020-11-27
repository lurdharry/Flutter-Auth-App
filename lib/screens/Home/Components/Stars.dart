import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/util.dart';
import 'package:flutter/material.dart';

class Ratings extends StatelessWidget {
  final double value;

  const Ratings({Key key, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
       
    return Row(
      children: [
        ...List.generate(5, (index) =>
            Icon(
              Icons.star,
              size: hp(11),
              color: index+1<=value?Colors.yellow:Colors.black26,
            )
        )
      ],
    );
  }
}
// double jj =hp(14);
class RowText extends StatelessWidget {
  final FontWeight leftFontWeight;
  final FontWeight rightFontWeight;
  final double rightFontSize,padding;
  final String leftText, rightText;


  const RowText({
    Key key, 
    this.leftFontWeight=FontWeight.w600, 
    this.rightFontWeight=FontWeight.w100, 
    this.rightFontSize, this.leftText="Recommended", this.rightText="View all", 
    this.padding=34,
    }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:  EdgeInsets.symmetric(horizontal:padding),
      child: Row(
        children: [
          new CustomText(
            isTap: false,
            title:leftText,
            weight: FontWeight.w600,  
          ),
          Spacer(),
          new CustomText(
            isTap: false,
            title:rightText,
            fontsize: rightFontSize,
            // weight: FontWeight.w600,  
          ),
        ],
        
      ),
    );
  }
}