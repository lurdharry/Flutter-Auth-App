import 'package:TestApp/models/fmodel.dart';
import 'package:get/get.dart';

class HomeController  extends GetxController {

  RxList<FoodModel> foods = RxList<FoodModel>([]);


  HomeController(){
  loadCategories();
  }

  loadCategories() {
    foods.addAll(dummyfoods.map<FoodModel>((item) => FoodModel(
              id: item.id,
              image: item.image,
              name:item.name,
              ratiing: item.ratiing,
              toppings: item.toppings
            )).toList()
        );
  }
}