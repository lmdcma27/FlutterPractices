import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('lib/images/logo.jpg'),
            ),
            SizedBox(height: 40),
            //title
            Text(
              'Welcome to RPG Games',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            //sub title
            Text(
              'The biggest rpg games store in the world',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            //start now button

            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Center(
                    child: const Text(
                      'Shop Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
