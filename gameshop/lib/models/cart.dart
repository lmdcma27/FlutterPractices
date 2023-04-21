import 'package:flutter/material.dart';
import 'package:gameshop/models/game.dart';

class Cart extends ChangeNotifier {
  //list of games
  List<Game> gameShop = [
    Game(
        name: 'Dark Souls III',
        price: '60',
        imagePath: 'lib/images/ds3.jpg',
        description: 'Last game of souls saga'),
    Game(
        name: 'Dark Souls I',
        price: '60',
        imagePath: 'lib/images/dsr.jpg',
        description: 'Last game of souls saga'),
    Game(
        name: 'BloodBorne',
        price: '60',
        imagePath: 'lib/images/bb.jpg',
        description: ''),
    Game(
        name: 'Sekiro',
        price: '60',
        imagePath: 'lib/images/sekiro.jpg',
        description: 'Just parry and dash'),
  ];

  //list of items in user cart
  List<Game> userCart = [];

  //get list of items for sale
  List<Game> getGameList() {
    return gameShop;
  }

  //get Cart
  List<Game> getUserCart() {
    return userCart;
  }

  //add item to the cart
  void addItemToCart(Game game) {
    userCart.add(game);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Game game) {
    userCart.remove(game);
    notifyListeners();
  }
}
