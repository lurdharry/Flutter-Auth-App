import 'package:TestApp/common/util.dart';
import 'package:TestApp/screens/Carts/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  ListMe extends StatelessWidget {
  final CartController props = Get.put<CartController>(CartController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding:  EdgeInsets.only(left:wp(34)),
        child: Row(
          children:[
            ...List.generate(props.cart.length, (index) => items(index)),
          ]
        ),
      )
      
    );
  }
  items( int index){
    return Row(
      children: [
        Image(
          image: AssetImage(props.cart[index].image),
          height: hp(70),
          width: wp(63),
          fit: BoxFit.contain,
        ),
        SizedBox( width:wp(10)),
      ],
    );
  }
}