import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Center(
        child: Image.network(url),
      ),
    );
  }
}
