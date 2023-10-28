import 'package:flutter/material.dart';

class DetailBox extends StatelessWidget {
  const DetailBox({super.key, required this.name, required this.id});

  final String name;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.red[400],
          borderRadius: BorderRadius.circular(15),
        ),
        width: 300,
        height: 70,
        child: Column(
          children: [
            Center(
              child: Text(
                name,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
