import 'package:flutter/material.dart';

void main() {
  runApp(login());
}

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('sport connect'),
          ),
        ),
      ),
    );
  }
}
////////==================================
///
 