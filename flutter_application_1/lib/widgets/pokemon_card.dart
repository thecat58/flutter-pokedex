import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/pokemon_llist_response_model.dart';
import 'package:flutter_application_1/utils/strings.dart';
import 'package:flutter_application_1/widgets/custom_image.dart';


class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonCard(this.pokemon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Center(
              child: Text(
                capitalizeString(
                  pokemon.name!,
                ),
              ),
            ),
          ),
          CustomImage(image: pokemon.image!),
        ],
      ),
    );
  }
}
