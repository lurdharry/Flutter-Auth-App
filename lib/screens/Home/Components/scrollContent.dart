import 'package:TestApp/common/foodcard.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/models/foods.dart';
import 'package:TestApp/screens/Home/Components/Stars.dart';
import 'package:TestApp/screens/Home/Components/recoList.dart';
import 'package:flutter/material.dart';

class MianView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(dummyfoods.length, (index) => 
            FoodCard(ooo:dummyfoods[index])
          ),
          RowText(),
          SizedBox(height:hp(12)),
          ListMe()
        ],
      ),  
    );
  }

}