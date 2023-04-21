import 'package:coffe_shop/components/coffee_title.dart';
import 'package:coffe_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  bool isButtonPressed = false;

  void payNow() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
    //fill out your payment service here
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Done!'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  //heading
                  Text(
                    'Your cart',
                    style: TextStyle(fontSize: 20),
                  ),
                  //space
                  SizedBox(
                    height: 25,
                  ),

                  //list of cart items
                  Expanded(
                    child: ListView.builder(
                        itemCount: value.userCart.length,
                        itemBuilder: ((context, index) {
                          //get individual cart items
                          Coffee eachCoffee = value.userCart[index];

                          //return coffee title
                          return CoffeeTile(
                            coffee: eachCoffee,
                            onPressed: () => removeFromCart(eachCoffee),
                            icon: Icon(Icons.delete),
                          );
                        })),
                  ),

                  GestureDetector(
                    onTap: payNow,
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: const Text(
                          'Pay Now',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
