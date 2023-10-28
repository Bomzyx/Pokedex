import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:basic_flutter/api/fetchapi.dart';
import 'package:basic_flutter/models/pokemon.dart';
import 'package:http/http.dart';
import '../widgets/pokemon_box.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchPokemon(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Pokemon>? x = snapshot.data;
              List<Widget> pokemon_boxes = [];
              for (int i = 0; i < x!.length; i++) {
                Pokemon pokemon = x[i];
                pokemon_boxes.add(PokemonBox(
                    id: pokemon.id, name: pokemon.name, url: pokemon.url));
              }
              return GridView.count(crossAxisCount: 2, children: pokemon_boxes);
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
