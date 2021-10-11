import 'package:demo/view_models/pokemon_list_view_model.dart';
import 'package:demo/widgets/pokemon_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PokemonListPage extends StatefulWidget {
  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Provider.of<PokemonListViewModel>(context, listen: false).fetchPokemons();
//you can use anything you like or not use anything here. I call it just to have a content on the screen rather than having a blank screen
  }

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<PokemonListViewModel>(context);

    return Scaffold(
        appBar: AppBar(
            title: const Text("Pokedex")
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: <Widget>[
              // Container(
              //   padding: const EdgeInsets.only(left: 10),
              //   decoration: BoxDecoration(
              //       color: Colors.grey,
              //       borderRadius: BorderRadius.circular(10)
              //   ),
              //   child: TextField(
              //     controller: _controller,
              //     onSubmitted: (value) {
              //       if(value.isNotEmpty) {
              //         vm.fetchPokemons();
              //         _controller.clear();
              //       }
              //     },
              //     style: const TextStyle(color: Colors.white),
              //     decoration: const InputDecoration(
              //         hintText: "Search",
              //         hintStyle: TextStyle(color: Colors.white),
              //         border: InputBorder.none
              //     ),
              //
              //   ),
              // ),
              Expanded(
                  child: PokemonList(pokemons: vm.pokemons))//we will create this further down
            ])
        )

    );
  }
}