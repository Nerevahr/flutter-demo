import 'package:demo/services/pokemon_service.dart';
import 'package:demo/view_models/pokemon_view_model.dart';
import 'package:flutter/material.dart';


class PokemonListViewModel extends ChangeNotifier {

  List<PokemonViewModel> pokemons = List.empty(growable: true);

  Future<void> fetchPokemons() async {
    final results =  await PokemonService().fetchList();
    pokemons = results.map((item) => PokemonViewModel(pokemon: item)).toList();
    print("fetching ! ");
    notifyListeners();
  }

}