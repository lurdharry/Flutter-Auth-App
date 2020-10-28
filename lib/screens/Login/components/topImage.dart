import 'package:TestApp/common/util.dart';
import 'package:TestApp/screens/Login/components/doubleText.dart';
import 'package:flutter/material.dart';

class  TopImage extends StatelessWidget {
 final bool islogin;
 final String title;
 final String subtitle;

  const TopImage({Key key, this.islogin = true, this.title, this.subtitle}) : super(key: key);
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
                    title:islogin? "Welcome Back!":title,
                    subTitle:islogin? 'Login to your account':subtitle,
                  )
                  )
              ],
            ),
          );
  }
}