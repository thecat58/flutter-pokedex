import 'package:flutter/material.dart';
import 'package:pokem/pages/home_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pokedex'),
        ),    
        body: const Home( ),
      ),
    );
  }
}
