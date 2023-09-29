import 'package:demo/create-account/create.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: create(),
      
    );
  }
}
