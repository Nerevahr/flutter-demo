import 'package:demo/models/pokemon_details_model.dart';
import 'package:demo/services/pokemon_service.dart';
import 'package:flutter/cupertino.dart';

class PokemonDetailsViewModel extends ChangeNotifier {

  late PokemonDetails pokemonDetails;

  Future<void> fetchPokemonDetails(id) async {
    final results =  await PokemonService().fetchDetails(id);
    pokemonDetails = results;
    notifyListeners();
  }

}