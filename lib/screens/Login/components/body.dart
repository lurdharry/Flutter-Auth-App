
import 'package:TestApp/common/ButtonWidget.dart';
import 'package:TestApp/common/color.dart';
import 'package:TestApp/common/text.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/controllers/login_controller.dart';
import 'package:TestApp/screens/Login/components/RadioButton.dart';
import 'package:TestApp/screens/Login/components/doubleColorText.dart';
import 'package:TestApp/screens/Login/components/topImage.dart';
import 'package:TestApp/screens/signUpscreen/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  final formKey =GlobalKey<FormBuilderState>();

  final controller = Get.put(LoginController());

   
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child:  new FormBuilder(   
            key: formKey,     
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
                        child:   FormBuilderTextField(
                        attribute: 'email',
                        readOnly: controller.loading.value,
                        validators: [
                          FormBuilderValidators.email(errorText:'Invalid Email'),
                          FormBuilderValidators.required(),
                        ],
                        decoration: Utils.decoration('Email',
                          prefix: Icons.email_outlined,
                        ),
                        ),
                      ),
                      SizedBox(height:20.0),
                      FormBuilderTextField(
                        readOnly: controller.loading.value,
                        attribute: 'password',
                        validators: [
                          FormBuilderValidators.required(),
                        ],
                        decoration: Utils.decoration('Password',
                          prefix: Icons.lock_outline,
                        ),
                      ),
                      SizedBox(height:hp(25)),
                      RadioButtonRow(),
                      SizedBox(height:hp(50)),
                      ButtonWidget(
                        title: controller.loading.value ? 'Loading...' : 'LOGIN',
                        bgColor: darkBrown,
                        titleColor: Colors.white,
                        onPress: (){
                          controller.login(formKey,context);
                          // Navigator.pushNamed(context, HomeScreen.routeName);
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
        ),)

        )
    );
  }
}