import 'package:TestApp/common/color.dart';
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
    this.bgColor, this.titleColor
    }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: hp(50),
      child: FlatButton( 
        color: bgColor,
        onPressed: onPress,
        child: Text(title,style: TextStyle(
            color:titleColor,
            fontSize: hp(14) 
        ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(hp(10)),
          ), 
      ),
    );
  }
}