import 'package:TestApp/common/bottomBox.dart';
import 'package:TestApp/screens/Login/components/body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
    static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Body(),
      bottomNavigationBar: BottomBox()
    );
  }
}