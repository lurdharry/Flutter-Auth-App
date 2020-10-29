import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/models/foods.dart';
import 'package:TestApp/screens/Home/Components/Stars.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final Foods ooo;

  const FoodCard({Key key, this.ooo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin:  EdgeInsets.symmetric(horizontal:wp(34)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(hp(9)),
              topRight: Radius.circular(hp(9)),
              bottomLeft: Radius.circular(hp(9)),
              bottomRight: Radius.circular(hp(9))
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Image(
                image: new AssetImage(
                  ooo.image
                ),
                width: double.infinity,
                height: hp(113),
                fit: BoxFit.fill,
              ),

            Align(
                alignment: Alignment.topLeft,
                child: 
                  Padding(
                    padding:EdgeInsets.fromLTRB(wp(20), hp(10), 0, hp(10)) ,
                    child: 
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new CustomText(
                          isTap:false,
                          title: ooo.name,
                          weight: FontWeight.w600,
                        ),
                        SizedBox(height:hp(5)),
                        new CustomText(
                          isTap:false,
                          title: ooo.toppings,
                          weight: FontWeight.w300,
                          fontsize: hp(12),
                        ),
                        SizedBox(height:hp(5)),
                        Ratings(value: ooo.ratiing,)          
                      ],
                    ),
                  ),
              
            )

            ],
          )
        ),
        SizedBox(height:hp(30))
      ],
    );
  }

}