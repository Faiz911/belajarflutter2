import 'package:flutter/material.dart';
import 'package:pertemuan2/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: SafeArea(child: Text("Testing"))),
    );
  }
}
