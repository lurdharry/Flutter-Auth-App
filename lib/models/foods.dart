class Foods {
  final int id;
  final String image,name,toppings;
  final double ratiing;

  Foods({
    this.id, 
    this.image, 
    this.name, 
    this.toppings, 
    this.ratiing
    });
}

List<Foods> dummyfoods =[
   new Foods(
    id:1,
    image: "assets/images/list1.png",
    name: "Cheese Burger",
    toppings: "Beef, Veggies & Chilli",
    ratiing: 2.0
  ),
  new Foods(
    id: 2,
    image: "assets/images/list2.png",
    name: "Jollof Rice",
    toppings: "Grilled Chicken, Veggies & Sauce",
    ratiing: 5.0
  )
];