import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  final String entrImagePath;
  final String entrName;
  final String entriPrice;

  CoffeTile(
      {required this.entrImagePath,
      required this.entrName,
      required this.entriPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          children: [
            //Imagen
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(entrImagePath)),

            // Texto
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                children: [
                  Text(entrName, style: TextStyle(fontSize: 20)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      'El último juego de la saga souls, te ofrece un gran gameplay y enriquece el lore, pero también deja nuevas dudas',
                      style: TextStyle(color: Colors.grey[400])),
                ],
              ),
            ),

            //Precio
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$ ' + entriPrice),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.orange),
                      child: Icon(Icons.add))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
