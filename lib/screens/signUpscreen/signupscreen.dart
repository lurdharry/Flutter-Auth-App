import 'package:TestApp/common/bottomBox.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/screens/signUpscreen/Components/body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
    static String routeName = "/signUp";
  @override
  Widget build(BuildContext context) {
    Utils().init(context);
    return Scaffold(
            // resizeToAvoidBottomInset: false,   //new lin
      body:Body(),
      bottomNavigationBar: BottomBox()
    );
  }
}