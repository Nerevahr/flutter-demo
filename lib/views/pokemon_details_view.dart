import 'package:demo/view_models/pokemon_details_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PokemonDetailsView extends StatefulWidget {

  final int pokemonId;

  PokemonDetailsView({required this.pokemonId});

  @override
  _PokemonDetailsPageState createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsView> {

  late Future future;

  @override
  void initState() {
    super.initState();
    future = Provider.of<PokemonDetailsViewModel>(context, listen: false).fetchPokemonDetails(widget.pokemonId);
  }

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<PokemonDetailsViewModel>(context);

    return Scaffold(
        appBar: AppBar(
            title: Text("details")
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: FutureBuilder(
              future: future,
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.done) {
                  final pokemon = vm.pokemonDetails;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    pokemon.sprites["other"]["official-artwork"]["front_default"]
                                )
                            ),
                            borderRadius: BorderRadius.circular(6)),
                        width: 100,
                        height: 100,
                      ),
                      Text(pokemon.name),
                      Text("Poids : " + pokemon.weight.toString()),
                    ],
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )
        )
    );
  }
}