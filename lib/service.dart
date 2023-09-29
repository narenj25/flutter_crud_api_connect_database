// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  String? name;
  String? email;
  String? password;
  register(
      {required String? name,
      required String? email,
      required String? password}) async {
    try {
      Object? data = {"name": name, "email": email, "password": password};
      final url = Uri.parse("http://192.168.0.118:3000/users");
      final response = await http.post(url,
          headers: {"Content-type": "application/json"},
          body: jsonEncode(data));
    } catch (e) {
      print(":::::::::::::::::::::::::::${e.toString()}");
    }
  }
}
