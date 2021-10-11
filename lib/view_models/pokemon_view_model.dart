
import 'package:demo/models/pokemon_model.dart';

class PokemonViewModel {

  final Pokemon pokemon;

  PokemonViewModel({required this.pokemon});

  String get name {
    return pokemon.name;
  }

  String get infoUrl {
    return pokemon.infoUrl;
  }

}
