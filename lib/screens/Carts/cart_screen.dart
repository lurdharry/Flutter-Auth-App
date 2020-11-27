import 'package:TestApp/common/bottomBox.dart';
import 'package:TestApp/screens/Carts/Components/CartBody.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartBody(),
      bottomNavigationBar: BottomBox(), 
    );
  }
}