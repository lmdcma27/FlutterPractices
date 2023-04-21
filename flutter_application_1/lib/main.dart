import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pagina02.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Mi App", home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mi App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Home'),
              ElevatedButton(
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Pagina02()))
                      },
                  child: Text('Ir a la siguiente Página'))
            ],
          ),
        ));
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              'https://es.wikipedia.org/wiki/La_noche_estrellada#/media/Archivo:Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg'),
          fit: BoxFit.cover),
    ),
  );
}
