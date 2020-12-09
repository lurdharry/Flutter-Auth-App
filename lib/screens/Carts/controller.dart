import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:TestApp/models/recommended.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<CartModel> cart = RxList<CartModel>([]);

@override
void onInit(){
loadCart();
  super.onInit();
}

  removeItem(int id ){
   cart.removeWhere((element) =>  element.key==id);
    print(id
    );
  }

  loadCart(){
    cart.addAll(dummyRecoData.map<CartModel>((item) => CartModel(
      image: item.image,
      key: item.key,
      name: item.name,
      price: item.price,
      toppings: item.toppings
      ))
      );
  }

    placeOrder() {
      // print('object');
  //  cart.clear();
  //   Get.back();
    Get.snackbar(
      "Placed",
      "Order placed with success!",
      backgroundColor: Colors.red,
      colorText: Colors.white,
      padding: EdgeInsets.all(15),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(25),
      icon: Icon(Icons.ac_unit, color: Colors.lightGreen, size: 21),
    );
  }
}