import 'package:demo/view_models/pokemon_view_model.dart';
import 'package:demo/views/pokemon_details_view.dart';
import 'package:flutter/material.dart';

class PokemonList extends StatelessWidget {
  final List<PokemonViewModel> pokemons;

  PokemonList({required this.pokemons});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: pokemons.length,
      separatorBuilder: (context, index) => const Divider(
        color: Colors.black,
      ),
      itemBuilder: (context, index) {
        final pokemon = pokemons[index];

        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PokemonDetailsView(pokemonId: index+1,)
              )
            );
          },
          contentPadding: const EdgeInsets.all(10),
          leading: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${index+1}.png")),
                borderRadius: BorderRadius.circular(6)),
            width: 50,
            height: 100,
          ),
          title: Text(pokemon.name),
        );
      },
    );
  }
}
