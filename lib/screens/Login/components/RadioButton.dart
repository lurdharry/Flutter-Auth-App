import 'package:TestApp/common/color.dart';
import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/util.dart';
import 'package:flutter/material.dart';

class RadioButtonRow extends StatefulWidget {
  @override
  _RadioButtonRowState createState() => _RadioButtonRowState();
}

class _RadioButtonRowState extends State<RadioButtonRow> {
 bool _value = false;
  
void remember(){
  setState(() {
    _value=!_value;
  });
}

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: [
        radioButton(),
        Spacer(),
        new CustomText(
          isTap:true,
          title: "Forgot Password?",
          color: darkBrown,
          onTap: (){
            remember();
            },
        ),
      ],
    );
  }
  Widget radioButton(){
    return Row(
      children: [
        InkWell(
          onTap: (){
            setState(() {
              _value=!_value;
            });
          },
          child: Container(
            width: hp(15),
            height: hp(15),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(hp(7.5)),
              border: Border.all(color: Colors.black26)
            ),
          
            child: Center(
                child:Icon(
                  Icons.check,
                  color: _value?darkBrown:Colors.white,
                  size: hp(12),
                  ),
            ),
          ),
        ),
        SizedBox(width:wp(7)),
        new  CustomText(
          isTap: false,
          title: 'Remember me',
          fontsize: hp(12),
        )
      ],
    );
  }
}