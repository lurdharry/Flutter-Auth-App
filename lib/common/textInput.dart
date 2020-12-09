import 'package:TestApp/common/color.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {

  final String hintext;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscText;
  final Function onGhange;
  final TextEditingController myCont;
  final bool nolabel;

  const TextFieldWidget({
    Key key, 
    this.hintext, 
    this.prefixIconData, 
    this.suffixIconData, 
    this.obscText, 
    this.onGhange, 
    this.myCont, 
    this.nolabel=false,
  })
   : super(key: key);
  
  


  @override
  Widget build(BuildContext context) {
    return TextField(
      
      controller: myCont,
      onChanged: onGhange,
      obscureText: obscText,
      style: TextStyle(color: Colors.deepOrangeAccent),
      decoration: InputDecoration(
        labelText: nolabel?null:hintext,
        hintText: hintext,
        prefixIcon: Icon(
          prefixIconData,
          size:15,
          color: Colors.red
        ),
        filled: true,
        suffixIcon: Icon(
          suffixIconData,
          size:18,
          color: darkBrown
        ),
        labelStyle: TextStyle(color: Colors.black),
        focusColor: Colors.red,

      ),
      
    );
  }
}