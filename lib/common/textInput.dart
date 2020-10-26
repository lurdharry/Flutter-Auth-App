import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {

  final String hintext;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscText;
  final Function onGhange;

  const TextFieldWidget({
    Key key, 
    this.hintext, 
    this.prefixIconData, 
    this.suffixIconData, 
    this.obscText, 
    this.onGhange})
   : super(key: key);
  
  


  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onGhange,
      obscureText: obscText,
      style: TextStyle(color: Colors.deepOrangeAccent),
      decoration: InputDecoration(
        labelText: hintext,
        // hintText: hintext,
        prefixIcon: Icon(
          prefixIconData,
          size:15,
          color: Colors.red
        ),
        filled: true,
        // enabledBorder: UnderlineInputBorder(
        //   borderSide: BorderSide.none,
        //   borderRadius: BorderRadius.circular(10)
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   borderSide: BorderSide(color: Colors.redAccent)
        //   ),
        suffixIcon: Icon(
          suffixIconData,
          size:18,
          color: Colors.red
        ),
        labelStyle: TextStyle(color: Colors.black),
        focusColor: Colors.red,

      ),
      
    );
  }
}