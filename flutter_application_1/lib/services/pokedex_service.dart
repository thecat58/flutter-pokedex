import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/pokemon_details.dart';
import 'package:flutter_application_1/models/pokemon_llist_response_model.dart';

class PokedexService {
  final _dio = Dio();
  String url = 'https://pokeapi.co/api/v2';

Future<List<Pokemon>> getPokemonsList() async {
  try {
    final Response response =
        await _dio.get('$url/pokemon?limit=50&offset=0');
    final PokemonListResponse pokemonListResponse =
        PokemonListResponse.fromJson(response.data);
    final List<Pokemon> pokemonList = pokemonListResponse.results!;
    return await parseResponse(pokemonList);
  } catch (e) {
    rethrow;
  }
}


Future<String> getPokemonImage(String url) async {
  try {
    final Response response = await _dio.get(url);
    final PokemonDetails pokemonDetails = PokemonDetails.fromJson(response.data);
    final String pokemonImage = pokemonDetails.sprites!.frontDefault!;
    return pokemonImage;
  } catch (e) {
    rethrow;
  }
}


  Future<List<Pokemon>> parseResponse(List<Pokemon> pokemons) async {
  List<Pokemon> parsedPokemons = [];
  for (Pokemon pokemon in pokemons) {
    final String pokemonImage = await getPokemonImage(pokemon.url!);
    pokemon.image = pokemonImage;
    parsedPokemons.add(pokemon);
  }
  return parsedPokemons;
}

}