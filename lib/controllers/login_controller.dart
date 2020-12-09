import 'package:TestApp/screens/Home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final  loading = RxBool(false);
  final error =RxString('');

  void login(GlobalKey<FormBuilderState> formkey,  BuildContext context)async{
    if(!formkey.currentState.saveAndValidate()) return;
    loading.value=true;
    final data = formkey.currentState.value;
    Navigator.pushNamed(context, HomeScreen.routeName);
    loading.value=false;
  }

   check( String value ){
    if(value.length==5){
      error.value ='snsnsjsj';
      // print(value.length);
    }
    else{
      error.value='';
    }
  }
}