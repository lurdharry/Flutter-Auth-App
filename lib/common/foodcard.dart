import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/models/foods.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final Foods ooo;

  const FoodCard({Key key, this.ooo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: new AssetImage(
            ooo.image
          ),
          width: wp(198),
          height: hp(113),
          fit: BoxFit.cover,
        ),
        Padding(
          padding:EdgeInsets.fromLTRB(wp(20), hp(10), 0, hp(10)) ,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new CustomText(
                isTap:false,
                title: ooo.name,
                color: Colors.black,
              ),
              new CustomText(
                isTap:false,
                title: ooo.toppings,
                color: Colors.black26,
              ),            
            ],
          ),
        )

      ], 
    );
  }
}