import 'package:TestApp/common/ButtonWidget.dart';
import 'package:TestApp/common/color.dart';
import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/screens/signUpscreen/signupscreen.dart';
import 'package:flutter/material.dart';

class SignUpBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      var assetsImage = new AssetImage('assets/images/illustration.png');
      var image = new Image(image: assetsImage, width: hp(161.0), height: hp(140.0));

    return  Center(
        child: new Column(
          children:[
            SizedBox(height:hp(24)),
            image,
            SizedBox(height:hp(14)),
            new CustomText(
              isTap: false,
              title: "Default Wallet Selection",
              color: Colors.black,
              fontsize: wp(20),
            ),
            SizedBox(height:wp(14)),
            Align(
              alignment: Alignment.centerLeft,
              child: new CustomText(
              isTap: false,
              title: "If you proceed, All cards transactions will be charged from the selected wallet.",
              color: Colors.black26,
            ),
            ),
            SizedBox(height:hp(30)),
            ButtonWidget(
              title: "CONFIRM",
              onPress: (){
                Navigator.of(context).pop();
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
              bgColor: lightBrown,
              titleColor: darkBrown,
            ),
            SizedBox(height:hp(20)),
            new CustomText(
              isTap:true,
              title: 'Click here to cancel',
              color: darkBrown,
               onTap: () => Navigator.of(context).pop(), 
            )
          ]
        ), 
      );

  }


}