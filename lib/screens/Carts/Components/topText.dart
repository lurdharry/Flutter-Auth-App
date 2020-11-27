import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/util.dart';
import 'package:flutter/material.dart';

class CartText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:wp(34),top: hp(100)),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new CustomText(
            title:"My Orders",
            weight: FontWeight.w600, 
            fontsize: hp(24),
          ),
          SizedBox(height:hp(8)),
          new CustomText(
            title: "Welcome to your cart, preview items below.", 
          ),
          SizedBox(height:hp(10)),
        ],
      ),
      
    );
  }
}