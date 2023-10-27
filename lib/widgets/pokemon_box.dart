import 'package:basic_flutter/widgets/pokemon_card.dart';
import 'package:flutter/material.dart';
import '../models/pokemon.dart';
import '../api/fetchapi.dart';
import 'dart:convert';
import 'pokemon_card.dart';

class PokemonBox extends StatelessWidget {
  const PokemonBox({super.key, required this.name, required this.url});

  final String name; // ชื่อโปเกมอน
  final String url;
  // final int id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.grey),
        ),
        child: Stack(
          children: [PokemonCard(name: name, url: url)],
        ),
      ),
    );
  }
}
