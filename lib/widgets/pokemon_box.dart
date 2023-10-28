import '../models/pokemon_detail_model.dart';
import 'package:basic_flutter/widgets/pokemon_card.dart';
import 'package:flutter/material.dart';
import '../pages/pokemon_detail.dart';

class PokemonBox extends StatelessWidget {
  const PokemonBox(
      {super.key, required this.id, required this.name, required this.url});

  final String name; // ชื่อโปเกมอน
  final String url;
  final int id;
  // final int id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.grey),
          ),
          child: Stack(
            children: [PokemonCard(id: id, name: name, url: url)],
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, "/details",
              arguments: PokeData(id, name, url));
        },
      ),
    );
  }
}
