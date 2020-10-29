import 'package:TestApp/common/util.dart';
import 'package:TestApp/models/recommended.dart';
import 'package:flutter/material.dart';

class  ListMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding:  EdgeInsets.only(left:wp(34)),
        child: Row(
          children:[
            ...List.generate(dummyRecoData.length, (index) => items(index)),
            ...List.generate(dummyRecoData.length, (index) => items(index))
          ]
        ),
      )
      
    );
  }
  items( int index){
    return Row(
      children: [
        Image(
          image: AssetImage(dummyRecoData[index].image),
          height: hp(70),
          width: wp(63),
          fit: BoxFit.contain,
        ),
        SizedBox( width:wp(10))
      ],
    );
  }
}