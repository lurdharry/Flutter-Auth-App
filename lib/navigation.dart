import 'package:TestApp/screens/Login/login_screen.dart';
import 'package:flutter/widgets.dart';

// import 'package:shop_app/screens/sign_in/sign_in_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> navigation  = {
  LoginScreen.routeName: (context) => LoginScreen(),
 
};