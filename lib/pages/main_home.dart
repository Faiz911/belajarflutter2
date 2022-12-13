import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/i_home.png",
            width: 20,
            height: 20,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/i_favorite.png",
            width: 20,
            height: 20,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/i_cart.png",
            width: 20,
            height: 20,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/i_profile.png",
            width: 20,
            height: 20,
          ),
          label: '',
        ),
      ]),
      body: Center(
        child: Text("Main Page"),
      ),
    );
  }
}
