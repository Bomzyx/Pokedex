import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key, required this.name, required this.url});

  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.network(
            url,
            fit: BoxFit.contain,
          ),
        ),
        const Divider(
          thickness: 3,
        ),
        Text(
          "${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(fontSize: 25, color: Colors.black),
        ),
      ],
    );
  }
}
