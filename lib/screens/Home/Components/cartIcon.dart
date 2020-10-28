import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        child:SvgPicture.asset(
          "assets/icons/chart.svg"
        ) ,
        onTap: (){}, 
      )
    );
  }
}