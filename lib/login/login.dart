import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       padding: const EdgeInsets.symmetric(vertical: 90),

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 50, 20, 30),
                child: TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    labelText: 'Name',
                  ),
                ),
              ),
            
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 50, 20, 30),
                child: TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    labelText: 'password',
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Colors.blueAccent,
                  minimumSize: Size(200, 45),
                ),
                onPressed: () {},
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
