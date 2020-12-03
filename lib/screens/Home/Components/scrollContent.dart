import 'package:TestApp/common/foodcard.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/screens/Home/Components/Stars.dart';
import 'package:TestApp/screens/Home/Components/recoList.dart';
import 'package:TestApp/screens/Home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MianView extends StatelessWidget {
  final HomeController controller =Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(controller.foods.length, (index) => 
            FoodCard(controller.foods[index])
          ),
          RowText(),
          SizedBox(height:hp(12)),
          ListMe()
        ],
      ),  
    );
  }

}