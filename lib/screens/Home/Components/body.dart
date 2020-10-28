import 'package:TestApp/common/textInput.dart';
import 'package:TestApp/common/util.dart';
import 'package:TestApp/screens/Home/Components/cartIcon.dart';
import 'package:TestApp/screens/Home/Components/welcome.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal:wp(34)
        ),
        child: Column(
          children:[
            CartIcon(),
            SizedBox(height:hp(5)),
            WelcomeText(),
            SizedBox(height:hp(20)),
            searchBar(),

          ]
        ),
      ),
      
    );
  }
  searchBar(){
    return new TextFieldWidget(
      prefixIconData: Icons.search,
      obscText: false,
      hintext: "search for meals, dishes",
      nolabel: true,

    );
  }
}