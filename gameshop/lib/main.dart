import 'package:flutter/material.dart';
import 'package:gameshop/models/cart.dart';
import 'package:gameshop/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) => const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: IntroPage(),
            ));
  }
}
