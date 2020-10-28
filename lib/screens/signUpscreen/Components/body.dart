import 'package:TestApp/common/ButtonWidget.dart';
import 'package:TestApp/common/color.dart';
import 'package:TestApp/common/textInput.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/screens/Login/components/doubleColorText.dart';
import 'package:TestApp/screens/Login/components/topImage.dart';
import 'package:TestApp/screens/Login/login_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {



  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
    var myController = TextEditingController();
    // var myCo = myController.selection.
    // var dgd =_myController.selection = TextSelection.collapsed(offset: newText.length);
void initState() {
  myController.addListener(() {
    final text = myController.text.toLowerCase();
    myController.value = myController.value.copyWith(
      text: text,
      selection: TextSelection(baseOffset: text.length, extentOffset: text.length),
      composing: TextRange.empty,
    );
  });
  super.initState();
}


 
  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children:<Widget>[
            TopImage(
              islogin: false,
              title: "Create your Account",
              subtitle: "It’s free and easy to set up!",
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(wp(34), hp(50), wp(34), 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[                
                  SizedBox(height:40.0),
                  TextFieldWidget(
                      hintext:'Username',
                      prefixIconData: Icons.email_outlined,
                      obscText: false,
                    ),
                  SizedBox(height:20.0),
                  TextFieldWidget(
                      hintext:'Email',
                      prefixIconData: Icons.email_outlined,
                      obscText: false,
                    ),
              
                  SizedBox(height:20.0),
                  TextFieldWidget(
                    hintext:'Password',
                    prefixIconData: Icons.lock_outline,
                    obscText: false,
                    
                    onGhange: (value) =>{
                      setState(() {
                        // TextSelection previousSelection = myController.selection;
                        myController.text = value;
                        // myController.selection = previousSelection;
                      })
                      },
                    myCont: myController,
                  ),
                  // SizedBox(height:hp(25)),
                  SizedBox(height:hp(50)),
                  ButtonWidget(
                    title:myController.text,
                    bgColor: darkBrown,
                    titleColor: Colors.white,
                    onPress: (){},
                  ),
                  SizedBox(height:hp(20)),
                   new DoubleColorText(
                    title:'Existing user?',
                    subTitle: 'Signin',
                    onPress: (){
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                  ),
                ]
              ),
              ),
          ],            
        ),
        )
    );
  }
}