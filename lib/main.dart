import 'package:basic_flutter/pages/homepage.dart';
import 'package:basic_flutter/widgets/pokemon_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContexcontext) {
    return MaterialApp(
      title: "Api",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Homepage(),
    );
  }
}
