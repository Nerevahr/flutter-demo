import 'dart:convert';

import 'package:demo/models/pokemon_model.dart';
import 'package:http/http.dart' as http;

class PokemonService {

  Future<List<Pokemon>> fetchList() async {

    final url = "https://pokeapi.co/api/v2/pokemon?limit=151&offset=0";
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {

      final body = jsonDecode(response.body);
      final Iterable json = body["results"];
      return json.map((pokemon) => Pokemon.fromJson(pokemon)).toList();

    } else {
      throw Exception("Unable to perform request!");
    }
  }
}