import 'package:TestApp/common/ButtonWidget.dart';
import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/textInput.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/screens/Login/components/doubleColorText.dart';
import 'package:TestApp/screens/Login/components/doubleText.dart';
import 'package:TestApp/screens/Login/components/topImage.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String hhh ="shshsh";

 
  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Container(
        child: Column(
          children:<Widget>[
            topImage(),
            Padding(
              padding: EdgeInsets.fromLTRB(wp(34), hp(50), wp(34), 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[                
                    SizedBox(height:10.0),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFieldWidget(
                      hintext:'Email',
                      prefixIconData: Icons.email_outlined,
                      obscText: false,
                    ),
                  ),
                  SizedBox(height:20.0),
                  TextFieldWidget(
                    hintext:'Password',
                    prefixIconData: Icons.lock_outline,
                    obscText: true,
                    onGhange: (value) => print(SizeConfig.screenWidth),
                  ),
                  SizedBox(height:40.0),
                  ButtonWidget(
                    title:'Login',
                    bgColor: Color.fromRGBO(226,95,56 ,1),
                    titleColor: Colors.white,
                  ),
                  SizedBox(height:hp(20)),
                   new doubleColorText(
                    title:'New user?',
                    subTitle: 'Signup',
                  )
                ]
              ),
              ),
          ],            
        ),
        ),
    );
  }
}