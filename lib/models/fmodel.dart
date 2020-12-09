// import 'package:get/get.dart';


// class FoodModel {
//   FoodModel({
//     int id,
//     String image,name,toppings,
//     double ratiing,
//   }){
//     this.id=id;
//     this.image=image;
//     this.name=name;
//     this.toppings=toppings;
//     this.ratiing =ratiing;
//   }
//   RxString _name =RxString();
//   set name(String value) => _name.value=value;
//   String get name  => _name.value;

//   RxString _toppings =RxString();
//   set toppings(String value) => _toppings.value=value;
//   String get toppings => _toppings.value;

//   RxString _image =RxString();
//   set image(String value) =>_image.value=value;
//   String get image => _image.value;


//   RxDouble _ratiing = RxDouble();
//   set ratiing(double value)  =>_ratiing.value = value;
//   double get ratiing => _ratiing.value;

//   RxInt _id = RxInt();
//   set id(int value) => _id.value =value;
//   int get  id =>_id.value;
// }


// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        this.foods,
    });

    List<Food> foods;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        foods: List<Food>.from(json["foods"].map((x) => Food.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "foods": List<dynamic>.from(foods.map((x) => x.toJson())),
    };
}

class Food {
    Food({
        this.id,
        this.image,
        this.name,
        this.toppings,
        this.ratiing,
    });

    int id;
    String image;
    String name;
    String toppings;
    double ratiing;

    factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        toppings: json["toppings"],
        ratiing: json["ratiing"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "toppings": toppings,
        "ratiing": ratiing,
    };
}


List<Food> dummyfoods =[
   new Food(
    id:1,
    image: "assets/images/list1.png",
    name: "Cheese Burger",
    toppings: "Beef, Veggies & Chilli",
    ratiing: 2.0
  ),
  new Food(
    id: 2,
    image: "assets/images/list2.png",
    name: "Jollof Rice",
    toppings: "Grilled Chicken, Veggies & Sauce",
    ratiing: 5.0
  )
];
