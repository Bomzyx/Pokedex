import 'package:basic_flutter/models/pokemon_detail_model.dart';
import 'package:basic_flutter/widgets/pokemon_detail_box.dart';
import 'package:flutter/material.dart';
import '../widgets/pokemon_detail_image.dart';

class PokemonDetailPage extends StatelessWidget {
  const PokemonDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as PokeData;

    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemon Detail"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: DetailImage(url: arguments.url),
          ),
          const SizedBox(height: 20),
          Container(
            child: DetailBox(name: arguments.name, id: arguments.id),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/pokeball.png"),
              color: Colors.grey,
            ),
            label: 'test',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_next),
            label: 'Next',
          ),
        ],
      ),
    );
  }
}
