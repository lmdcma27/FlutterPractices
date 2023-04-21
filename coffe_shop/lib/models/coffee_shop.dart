import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    //black coffe
    Coffee(
      name: 'Long Black',
      price: '4.10',
      imagePath: 'lib/images/Black-Coffee.jpg',
    ),
    // latte
    Coffee(
      name: 'Latte',
      price: '4.20',
      imagePath: 'lib/images/latte.jpg',
    ),
    //  Expresso
    Coffee(
      name: 'Expresso',
      price: '3.50',
      imagePath: 'lib/images/expresso.jpg',
    ),
    //  Expresso
    Coffee(
      name: 'Iced Coffee',
      price: '4.40',
      imagePath: 'lib/images/iced-coffee.jpg',
    ),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee  list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove  item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
