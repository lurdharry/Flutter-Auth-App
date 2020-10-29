import 'package:TestApp/common/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right:wp(34)),
      child: Align(
        alignment: Alignment.topRight,
        child: GestureDetector(
          child:SvgPicture.asset(
            "assets/icons/chart.svg"
          ) ,
          onTap: (){}, 
        )
      ),
    );
  }
}