import 'package:flutter/material.dart';
import 'package:pokem/services/pokedex_service.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PokedexService().getPokemonsList(),
      initialData: const {'results': []}, // Adjusted initial data structure
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        List<dynamic> pokemons = snapshot.data['results']; // Corrected key name
        return ListView.builder(
          itemCount: pokemons.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text(pokemons[index]['name']));
          },
        );
      },
    );
  }
}
