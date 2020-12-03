import 'package:TestApp/models/recommended.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<CartModel> cart = RxList<CartModel>([]);


  CartController(){
    loadCart();
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
}