import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/util.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new CustomText(
              isTap: false,
              title: "Hello, John",
              fontsize: wp(24),
              color: Colors.black,
            ),
            SizedBox(height:hp(3)),
            new CustomText(
              isTap: false,
              title: "Select your meal for the day",
              fontsize: wp(12),
              color: Colors.black87,
            ),
          ],
        ),
      
      
      
    );
  }
}