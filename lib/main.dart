import 'package:flutter/material.dart';
import 'package:fetch_data/Services/ApiService.dart';
import 'package:fetch_data/Model/UserModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center() ,
      ),
    );
  }
}
