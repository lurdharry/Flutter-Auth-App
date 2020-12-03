import 'package:get/get.dart';


class FoodModel {
  FoodModel({
    int id,
    String image,name,toppings,
    double ratiing,
  }){
    this.id=id;
    this.image=image;
    this.name=name;
    this.toppings=toppings;
    this.ratiing =ratiing;
  }
  RxString _name =RxString();
  set name(String value) => _name.value=value;
  String get name  => _name.value;

  RxString _toppings =RxString();
  set toppings(String value) => _toppings.value=value;
  String get toppings => _toppings.value;

  RxString _image =RxString();
  set image(String value) =>_image.value=value;
  String get image => _image.value;


  RxDouble _ratiing = RxDouble();
  set ratiing(double value)  =>_ratiing.value = value;
  double get ratiing => _ratiing.value;

  RxInt _id = RxInt();
  set id(int value) => _id.value =value;
  int get  id =>_id.value;
}

List<FoodModel> dummyfoods =[
   new FoodModel(
    id:1,
    image: "assets/images/list1.png",
    name: "Cheese Burger",
    toppings: "Beef, Veggies & Chilli",
    ratiing: 2.0
  ),
  new FoodModel(
    id: 2,
    image: "assets/images/list2.png",
    name: "Jollof Rice",
    toppings: "Grilled Chicken, Veggies & Sauce",
    ratiing: 5.0
  )
];
