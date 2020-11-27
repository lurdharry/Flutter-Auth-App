class RecoItem {
  final int key ;
  final String image,name,toppings,price;

  RecoItem({
    this.name, 
    this.toppings, 
    this.price, 
    this.key, 
    this.image}); 
}

List<RecoItem> dummyRecoData =[
  new RecoItem(
    key :1,
    image: "assets/images/1.png",
    name: "Cheese Burger",
    toppings: "Beef, Veggies & Chilli",
    price: "2000"
    
  ),
  new RecoItem(
    key :2,
    image: "assets/images/2.png",
    name: "Cheese Burger",
    toppings: "Beef, Veggies & Chilli",
    price: "4560"
  ),
  new RecoItem(
    key :3,
    image: "assets/images/3.png",
    name: "Cheese Burger",
    toppings: "Beef, Veggies & Chilli",
    price: "7566"
  ),
  new RecoItem(
    key :3,
    image: "assets/images/4.png",
    name: "Cheese Burger",
    toppings: "Beef, Veggies & Chilli",
    price: "8000"
  ),
];