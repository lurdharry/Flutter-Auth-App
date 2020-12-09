import 'package:flutter/material.dart';
import 'package:get/get.dart';









List<CartModel> dummyRecoData =[
  new CartModel(
    key :1,
    image: "assets/images/1.png",
    name: "Cheese Burger",
    toppings: "Beef, Veggies & Chilli",
    price: "2000"
    
  ),
  new CartModel(
    key :2,
    image: "assets/images/2.png",
    name: "Cheese Burger",
    toppings: "Beef, Veggies & Chilli",
    price: "4560"
  ),
  new CartModel(
    key :3,
    image: "assets/images/3.png",
    name: "Cheese Burger",
    toppings: "Beef, Veggies & Chilli",
    price: "7566"
  ),
  new CartModel(
    key :4,
    image: "assets/images/4.png",
    name: "Cheese Burger",
    toppings: "Beef, Veggies & Chilli",
    price: "8000"
  ),
];



class CartModel {
  CartModel({
    int key,
    String image,
    name,toppings,price,
  }){
    this.key=key;
    this.image=image;
    this.name=name;
    this.toppings=toppings;
    this.price=price;
  }

  RxString _price = RxString();
  set price(String value)=>_price.value=value;
  String get price =>_price.value;

  RxString _name =RxString();
  set name(String value) => _name.value=value;
  String get name  => _name.value;

  RxString _toppings =RxString();
  set toppings(String value) => _toppings.value=value;
  String get toppings => _toppings.value;

  Rx _image =Rx();
  set image(String value) =>_image.value=value;
  String get image => _image.value;


  RxDouble _ratiing = RxDouble();
  set ratiing(double value)  =>_ratiing.value = value;
  double get ratiing => _ratiing.value;

  RxInt _key = RxInt();
  set key(int value) => _key.value =value;
  int get  key =>_key.value;
}