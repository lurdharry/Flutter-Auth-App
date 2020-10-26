import 'package:TestApp/common/util.dart';
import 'package:TestApp/screens/Login/components/doubleText.dart';
import 'package:flutter/material.dart';

class  topImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      var assetsImage = new AssetImage('assets/images/Shape.png');
      var image = new Image(image: assetsImage, width: hp(220.0), height: hp(220.0));
        return  Container(
            height: hp(220),
            child: new Stack(          
              children: [
                Positioned(
                  right:-wp(21),
                  child: image
                ),
                new Positioned(
                  bottom: 8,
                  left: wp(34),
                  child: new DoubleText(
                    title: "Welcome Back!",
                    subTitle: 'Login to your account',
                  )
                  )
              ],
            ),
          );
  }
}