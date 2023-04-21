import 'package:flutter/material.dart';
import 'package:gameshop/models/game.dart';
import 'package:provider/provider.dart';

import '../components/game_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addGameToCart(Game game) {
    Provider.of<Cart>(context, listen: false).addItemToCart(game);

    //alert the user, game successfully added
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Successfuly'),
              content: Text('Check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          //message

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'What is your favorite rpg',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Find your games',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text('See All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blue))
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          //List of games for sale
          Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    //get a game from shop list
                    Game game = value.getGameList()[index];
                    // return the game
                    return GameTile(
                      game: game,
                      onTap: () => addGameToCart(game),
                    );
                  })),
          Padding(
            padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
