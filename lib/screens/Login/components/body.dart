import 'package:TestApp/common/ButtonWidget.dart';
import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/textInput.dart';
import 'package:TestApp/common/util.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String hhh ="shshsh";

 
  @override
  Widget build(BuildContext context) {
    MediaQueryData uuu = MediaQuery.of(context);
    double hei = uuu.size.width;
    var assetsImage = new AssetImage('assets/images/Shape.png');
    var image = new Image(image: assetsImage, width: 220.0, height: 220.0);
    return SafeArea(
      child: Container(
        // height: MediaQuery. of(context).size.height,
        // margin: EdgeInsets.only(top:Platform.isIOS?45:0),
        child: Column(
          children:<Widget>[
              Container(
                height: 220,
                child: new Stack(          
                  children: [
                    Positioned(
                      right:-20,
                      child: image
                    ),
                    new Positioned(
                      bottom: 8,
                      left: 20,
                      child:   new CustomText(
                          isTap: false,
                          title: hp(56).toString(),
                          fontsize: 30,
                        ) ,)
                  ],
                ),
              ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:<Widget> [
                         new CustomText(
                          isTap: false,
                          title: 'Login to your account',
                          fontsize: 14,
                        ),
                      ],),
                    // ),
                    SizedBox(height:10.0),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextFieldWidget(
                      hintext:SizeConfig.orientation.toString(),
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
                  SizedBox(height:10.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                        CustomText(
                          isTap:false,
                          title:'New user?'
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:7),
                          child: new CustomText(
                            isTap: true,
                            title: 'SignUp',
                            color: Color.fromRGBO(226,95,56 ,1),
                          ),
                          )
                    ],
                  ),
                ]
              ),
              ),
                   CustomText(
                          isTap:false,
                          title:'New user?'
                        ),
          ],            
        ),
        ),
    );
  }
}