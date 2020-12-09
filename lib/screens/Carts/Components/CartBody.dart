import 'package:TestApp/screens/Carts/Components/cartContent.dart';
import 'package:TestApp/screens/Carts/Components/topText.dart';
import 'package:flutter/material.dart';

class CartBody extends StatefulWidget {
  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CartText(),
          CartItemList(),
        ]
      ),
      
    );
  }
}