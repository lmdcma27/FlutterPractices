import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  const Pagina02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Términos y Condiciones"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Text(
            "Terminos y condiciones",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text("Para usar la aplicación es necesario aceptar"),
          Padding(
            padding: const EdgeInsets.all(50),
            child: ElevatedButton(
              onPressed: () => {Navigator.pop(context)},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, foregroundColor: Colors.white),
              child: Row(children: [
                Text(
                  "Aceptar Todo",
                  style: TextStyle(fontSize: 22),
                ),
                Icon(Icons.arrow_forward_ios)
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
