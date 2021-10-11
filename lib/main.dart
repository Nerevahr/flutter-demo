import 'package:demo/view_models/home_page_view_model.dart';
import 'package:demo/view_models/movie_list_view_model.dart';
import 'package:demo/view_models/pokemon_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => HomePageViewModel()),
    ChangeNotifierProvider(create: (_) => MovieListViewModel()),
    ChangeNotifierProvider(create: (_) => PokemonListViewModel()),
  ], child: const MyApp()));
}
