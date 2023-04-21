import 'package:coffe_shop/hidden_drawer.dart';
import 'package:coffe_shop/models/coffee_shop.dart';
import 'package:coffe_shop/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: ((context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HiddenDrawer(),
            theme: ThemeData(primarySwatch: Colors.deepPurple),
          )),
    );
  }
}
