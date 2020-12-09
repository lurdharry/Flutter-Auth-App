import 'package:TestApp/models/fmodel.dart';
import 'package:get/get.dart';

class HomeController  extends GetxController {

  RxList<Food> foods = RxList<Food>();


  HomeController(){
  loadCategories();
  }

  loadCategories() {
    foods.addAll(dummyfoods.map<Food>((item) => Food(
              id: item.id,
              image: item.image,
              name:item.name,
              ratiing: item.ratiing,
              toppings: item.toppings
            ))
        );
  }
}