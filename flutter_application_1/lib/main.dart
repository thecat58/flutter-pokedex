import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pokemon_list_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pokemones'),
        ),
        body: const HomePage(),
      ),
    );
  }
}




