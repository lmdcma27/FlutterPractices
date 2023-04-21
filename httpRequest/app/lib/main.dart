import 'package:app/user_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserDetail(),
      routes: {
        '/': (context) => const UserDetail(),
      },
    );
  }
}
