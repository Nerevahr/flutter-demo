class Pokemon {

  final String name;
  final String infoUrl;

  Pokemon({required this.name, required this.infoUrl});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
        name: json["name"],
        infoUrl: json["url"]
    );
  }

}