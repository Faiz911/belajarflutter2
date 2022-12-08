import 'package:flutter/material.dart';
import 'package:pertemuan2/helper/my_color.dart';
import 'package:pertemuan2/main.dart';
import 'package:pertemuan2/pages/login.dart';
import 'package:pertemuan2/pages/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
