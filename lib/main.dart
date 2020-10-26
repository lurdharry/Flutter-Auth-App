import 'package:TestApp/common/theme.dart';
import 'package:TestApp/navigation.dart';
import 'package:TestApp/screens/Login/login_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: navigation,
      // home: MyHomePage(title: 'Flutter Demo Home Pae'),
    );
  }
}

