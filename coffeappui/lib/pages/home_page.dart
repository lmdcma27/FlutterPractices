import 'package:coffeappui/util/coffe_tile.dart';
import 'package:coffeappui/util/coffe_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //lista de entretenimiento
  final List coffeType = [
    ['Juegos', true],
    ['Anime', false]
  ];

  //Menu seleccionado
  void coffeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeType.length; i++) {
        coffeType[i][1] = false;
      }
      coffeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.person))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '')
      ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Encontrá los mejores juegos y animes para vos!!',
              style: GoogleFonts.bebasNeue(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Encontrá un juego o anime...",
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)))),
          ),
          SizedBox(height: 25),

          //lista horizontal de tipo de entretenimiento
          Container(
            height: 30,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeType.length,
                itemBuilder: (context, index) {
                  return CoffeType(
                      coffeType: coffeType[index][0],
                      isSelected: coffeType[index][1],
                      onTap: () {
                        coffeTypeSelected(index);
                      });
                }),
          ),

          //Lista de vistas horiontal de titulos
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeTile(
                  entrImagePath: 'lib/imagenes/ds3.jpg',
                  entrName: 'Dark Souls 3',
                  entriPrice: '60'),
              CoffeTile(
                  entrImagePath: 'lib/imagenes/fma.jpg',
                  entrName: 'Full Metal Alchemist',
                  entriPrice: '10'),
              CoffeTile(
                  entrImagePath: 'lib/imagenes/hxh.jpg',
                  entrName: 'Hunter x Hunter',
                  entriPrice: '10'),
              CoffeTile(
                  entrImagePath: 'lib/imagenes/sekiro.jpg',
                  entrName: 'Sekiro',
                  entriPrice: '60'),
              CoffeTile(
                  entrImagePath: 'lib/imagenes/op.jpeg',
                  entrName: 'One piece',
                  entriPrice: '10')
            ],
          ))
        ],
      ),
    );
  }
}
