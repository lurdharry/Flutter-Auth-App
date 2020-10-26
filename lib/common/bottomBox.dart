import 'package:TestApp/common/color.dart';
import 'package:TestApp/common/util.dart';
import 'package:flutter/material.dart';

class BottomBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      // height: SizeConfig.screenHeight*(0.2),
      decoration: BoxDecoration(
        color: lightBrown,
      ),
    );
  }
}