import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pokemon.dart';
import 'package:flutter/foundation.dart';

Future<List<Pokemon>>? fetchPokemon() async {
  final response =
      await http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=25"));

  if (response.statusCode == 200) {
    List results = json.decode(response.body)['results'] as List;
    List<Pokemon> pokemons = [];

    // for (int id = 0; id < results.length; id++) {
    //   String pokemon_img =
    //       "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${id + 1}.png";
    for (int i = 0; i < results.length; i++) {
      Map<String, dynamic> result = results[i];
      Pokemon pokemon = Pokemon(
          id: i + 1,
          name: result["name"],
          url:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${i + 1}.png");
      pokemons.add(pokemon);
      // }
    }

    return pokemons;
  } else {
    throw Exception("Error Fetching");
  }
}
