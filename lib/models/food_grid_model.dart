import 'package:simple_menu_app/models/category_menu_model.dart';

class FoodGridModel {
  final String image;
  final String foodName;
  final String foodPrice;
  final String foodDescription;

  FoodGridModel({
    required this.image,
    required this.foodDescription,
    required this.foodName,
    required this.foodPrice,
  });
}

List<FoodGridModel> getFoodGrid() {
  if (categoryName == 'Burgers') {
    List<FoodGridModel> burgerGridModel = [
      FoodGridModel(
          image: 'assets/images/Shiitake Mushroom.png',
          foodDescription: '150 gm',
          foodName: 'Shiitake',
          foodPrice: '265 EGP'),
      FoodGridModel(
          image: 'assets/images/Animal Style.png',
          foodDescription: '150 gm',
          foodName: 'Animal',
          foodPrice: '150 EGP'),
      FoodGridModel(
          image: 'assets/images/Bacon Mushroom Jack.png',
          foodDescription: '150 gm',
          foodName: 'Bacon',
          foodPrice: '180 EGP'),
      FoodGridModel(
          image: 'assets/images/Old School.png',
          foodDescription: '150 gm',
          foodName: 'Old',
          foodPrice: '140 EGP'),
      FoodGridModel(
          image: 'assets/images/Blue Cheese.png',
          foodDescription: '150 gm',
          foodName: 'Blue',
          foodPrice: '145 EGP'),
      FoodGridModel(
          image: 'assets/images/The Rastafari.png',
          foodDescription: '150 gm',
          foodName: 'Rastafari',
          foodPrice: '165 EGP'),
    ];
    return burgerGridModel;
  } else if (categoryName == 'Appetizers') {
    List<FoodGridModel> appetizersGridModel = [
      FoodGridModel(
          image: 'assets/images/Large French Fries.png',
          foodDescription: '',
          foodName: 'French Fries',
          foodPrice: '35 EGP'),
      FoodGridModel(
          image: 'assets/images/Cheesy Fries.png',
          foodDescription: '',
          foodName: 'Cheesy Fries',
          foodPrice: '75 EGP'),
      FoodGridModel(
          image: 'assets/images/Diablo Fries.png',
          foodDescription: '',
          foodName: 'Diablo Fries',
          foodPrice: '45 EGP'),
      FoodGridModel(
          image: 'assets/images/Onion Rings.png',
          foodDescription: '',
          foodName: 'Onion Rings',
          foodPrice: '40 EGP'),
      FoodGridModel(
          image: 'assets/images/Blanco Fries.png',
          foodDescription: '',
          foodName: 'Blanco Fries',
          foodPrice: '60 EGP'),
      FoodGridModel(
          image: 'assets/images/Bacon Fries.png',
          foodDescription: '',
          foodName: 'Bacon Fries',
          foodPrice: '120 EGP'),
    ];
    return appetizersGridModel;
  } else if (categoryName == 'Desserts') {
    List<FoodGridModel> dessertsGridModel = [
      FoodGridModel(
          image: 'assets/images/Cookie Slice.png',
          foodDescription: '',
          foodName: 'Cookie Slice',
          foodPrice: '50 EGP'),
      FoodGridModel(
          image: 'assets/images/Apple Pie.png',
          foodDescription: '',
          foodName: 'Apple Pie',
          foodPrice: '25 EGP'),
      FoodGridModel(
          image: 'assets/images/Blueberry Cheesecake.png',
          foodDescription: '',
          foodName: 'Blueberry',
          foodPrice: '75 EGP'),
      FoodGridModel(
          image: 'assets/images/Chocolate Chip Cookies.png',
          foodDescription: '',
          foodName: 'Chocolate  ',
          foodPrice: '45 EGP'),
      FoodGridModel(
          image: 'assets/images/Lotus Cheesecake.png',
          foodDescription: '',
          foodName: 'Lotus cake',
          foodPrice: '75 EGP'),
      FoodGridModel(
          image: 'assets/images/Oats Cookies.png',
          foodDescription: '',
          foodName: 'Oats Cookies',
          foodPrice: '30 EGP'),
    ];
    return dessertsGridModel;
  } else if (categoryName == 'Sauces') {
    List<FoodGridModel> soupGridModel = [
      FoodGridModel(
          image: 'assets/images/Buffalo Sauce.png',
          foodDescription: '',
          foodName: 'Buffalo Sauce',
          foodPrice: '10 EGP'),
      FoodGridModel(
          image: 'assets/images/Cheddar Cheese Sauce.png',
          foodDescription: '',
          foodName: 'Cheese Sauce',
          foodPrice: '20 EGP'),
      FoodGridModel(
          image: 'assets/images/Ketchup.png',
          foodDescription: '',
          foodName: 'Ketchup',
          foodPrice: '2.3 EGP'),
      FoodGridModel(
          image: 'assets/images/Mayonnaise.png',
          foodDescription: '',
          foodName: 'Mayonnaise',
          foodPrice: '5 EGP'),
      FoodGridModel(
          image: 'assets/images/Mustard.png',
          foodDescription: '',
          foodName: 'Mustard',
          foodPrice: '5 EGP'),
      FoodGridModel(
          image: 'assets/images/Ranch Sauce.png',
          foodDescription: '',
          foodName: 'Ranch Sauce',
          foodPrice: '10 EGP'),
    ];
    return soupGridModel;
  } else {
    List<FoodGridModel> drinksGridModel = [
      FoodGridModel(
          image: 'assets/images/Water Bottle.png',
          foodDescription: '',
          foodName: 'Water Bottle',
          foodPrice: '10 EGP'),
      FoodGridModel(
          image: 'assets/images/Pure Apple Juice.png',
          foodDescription: '',
          foodName: 'Apple Juice',
          foodPrice: '15 EGP'),
      FoodGridModel(
          image: 'assets/images/Green Lemon.png',
          foodDescription: '',
          foodName: 'Green Lemon',
          foodPrice: '25 EGP'),
      FoodGridModel(
          image: 'assets/images/Green Cola.png',
          foodDescription: '',
          foodName: 'Green Cola',
          foodPrice: '25 EGP'),
    ];
    return drinksGridModel;
  }
}
