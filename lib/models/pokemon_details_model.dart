class PokemonDetails {

  final List<dynamic> abilities;
  final int baseExperience;
  final List<dynamic> forms;
  final List<dynamic> gameIndices;
  final num height;
  final List<dynamic> heldItems;
  final int id;
  final bool isDefault;
  final Uri locationAreaEncounters;
  final List<dynamic> moves;
  final String name;
  final int order;
  final List<dynamic> pastTypes;
  final dynamic species;
  final dynamic sprites;
  final List<dynamic> stats;
  final List<dynamic> types;
  final int weight;

  PokemonDetails({
        required this.abilities,
        required this.baseExperience,
        required this.forms,
        required this.gameIndices,
        required this.height,
        required this.heldItems,
        required this.id,
        required this.isDefault,
        required this.locationAreaEncounters,
        required this.moves,
        required this.name,
        required this.order,
        required this.pastTypes,
        required this.species,
        required this.sprites,
        required this.stats,
        required this.types,
        required this.weight,
  });

  factory PokemonDetails.fromJson(Map<String, dynamic> json) {
    return PokemonDetails(
        abilities: json["abilities"],
        baseExperience: json["base_experience"],
        forms: json["forms"],
        gameIndices: json["game_indices"],
        height: json["height"],
        heldItems: json["held_items"],
        id: json["id"],
        isDefault: json["is_default"],
        locationAreaEncounters: Uri.parse(json["location_area_encounters"]),
        moves: json["moves"],
        name: json["name"],
        order: json["order"],
        pastTypes: json["past_types"],
        species: json["species"],
        sprites: json["sprites"],
        stats: json["stats"],
        types: json["types"],
        weight: json["weight"],
    );
  }

}