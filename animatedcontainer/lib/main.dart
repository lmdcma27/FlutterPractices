import 'package:flutter/material.dart';

//Packages
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Color.fromARGB(255, 255, 0, 55);
  BorderRadius _borderRadius = BorderRadius.circular(10);

  void _cambiarContainer() {
    _width = 200;
    _height = 250;
    _color = Colors.red;
    _borderRadius = BorderRadius.circular(20);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.linear,
                  width: _width,
                  height: _height,
                  decoration:
                      BoxDecoration(color: _color, borderRadius: _borderRadius),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: _cambiarContainer, child: Text("Cambiar Container"))
          ],
        ),
      ),
    );
  }
}
