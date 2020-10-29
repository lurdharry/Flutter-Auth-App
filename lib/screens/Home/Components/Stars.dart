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

class RowText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal:wp(34)),
      child: Row(
        children: [
          new CustomText(
            isTap: false,
            title:"Recommended",
            weight: FontWeight.w600,  
          ),
          Spacer(),
          new CustomText(
            isTap: false,
            title:"View all",
            // weight: FontWeight.w600,  
          ),
        ],
        
      ),
    );
  }
}