import 'package:TestApp/screens/Home/Components/body.dart';
import 'package:TestApp/screens/Home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller){
        return Scaffold(
          body: HomeBody(),
        );
      },
      );
  }
}