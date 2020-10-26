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
    return Container(
      width: 400,
      height: 55,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10)
        ),
      child: RaisedButton(
        onPressed: onPress,
        child: Text(title,style: TextStyle(color:titleColor ),),
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(10),
          ),
        
      ),
    );
  }
}