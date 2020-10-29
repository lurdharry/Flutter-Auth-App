import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/util.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Function onPress;
  final Color bgColor;
  final Color titleColor;

  const ButtonWidget({
    Key key, 
    this.title, 
    this.onPress,
    this.bgColor, this.titleColor=Colors.white
    }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: hp(50),
      child: FlatButton( 
        color: bgColor,
        onPressed: onPress,
        child: new CustomText(
          isTap: false,
          color: titleColor,
          title: title,
        ),
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(hp(10)),
          ), 
      ),
    );
  }
}