import 'package:TestApp/common/bottomBox.dart';
import 'package:TestApp/screens/Carts/Components/CartBody.dart';
import 'package:TestApp/screens/Carts/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {

return GetBuilder<CartController>(
  init: CartController(),
  builder: (contrller){
    return Scaffold(
      body: CartBody(),
      bottomNavigationBar: BottomBox(), 
    );
  }
  );

  }
}