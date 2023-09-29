import 'package:demo/login/login.dart';
import 'package:demo/service.dart';
import 'package:flutter/material.dart';
// import ''

class create extends StatefulWidget {
  const create({super.key});

  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
  // final firstnameforController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Api data = Api();

  registerData() {
    data.register(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Center(
        //     child: Text('sport connect'),
        //   ),
        // ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/image/marriage.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 50, 20, 30),
                  child: TextField(
                    // obscureText: true,
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      labelText: 'Name',
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 20, 30),
                  child: TextField(
                    // obscureText: true,
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      labelText: 'Email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 20, 30),
                  child: TextField(
                    // obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      labelText: 'Password',
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
                    backgroundColor: Colors.red,
                    minimumSize: Size(200, 45),
                  ),
                  onPressed: () {
                    registerData();
                  },
                  child: Text("Create Account"),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Colors.red,
                    minimumSize: Size(200, 45),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const login()),
                    );
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
