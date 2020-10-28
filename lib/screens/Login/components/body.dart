import 'package:TestApp/common/BottomSheet.dart';
import 'package:TestApp/common/ButtonWidget.dart';
import 'package:TestApp/common/color.dart';
import 'package:TestApp/common/textInput.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/screens/Login/components/RadioButton.dart';
import 'package:TestApp/screens/Login/components/doubleColorText.dart';
import 'package:TestApp/screens/Login/components/modalContetn.dart';
import 'package:TestApp/screens/Login/components/topImage.dart';
import 'package:TestApp/screens/signUpscreen/signupscreen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
   
 
  @override
  Widget build(BuildContext context) {
    var show = BottomSheetClass();
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            TopImage(),
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
                  SizedBox(height:hp(25)),
                  RadioButtonRow(),
                  SizedBox(height:hp(50)),
                  ButtonWidget(
                    title:'LOGIN',
                    bgColor: darkBrown,
                    titleColor: Colors.white,
                    onPress: (){
                      show.fff(context, SignUpBottomSheet(), hp(425));
                    },
                  ),
                  SizedBox(height:hp(20)),
                   new DoubleColorText(
                    title:'New user?',
                    subTitle: 'Signup',
                    onPress: (){
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                    
                  ),
                ]
              ),
              ),
          ],            
        ),
        ),
    );
  }
}