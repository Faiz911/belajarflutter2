import 'package:flutter/material.dart';
import 'package:pertemuan2/helper/my_color.dart';
import 'package:pertemuan2/pages/home/cartpage.dart';
import 'package:pertemuan2/pages/home/favoritepage.dart';
import 'package:pertemuan2/pages/home/homepage.dart';
import 'package:pertemuan2/pages/home/profile.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int currentMenu = 0;
  int famz = 0;

  Widget containerWidget() {
    switch (currentMenu) {
      case 0:
        return HomePage();
        break;
      case 1:
        return FavoritePage();
        break;
      case 2:
        return CartPage();
        break;
      case 3:
        return ProfilePage();
        break;
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            debugPrint("Current Menu ${value}");
            setState(() {
              currentMenu = value;
            });
          },
          currentIndex: currentMenu,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/i_home.png",
                width: 20,
                height: 20,
                color: currentMenu == 0 ? MyColor.primaryColor : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/i_favorite.png",
                width: 20,
                height: 20,
                color: currentMenu == 1 ? MyColor.primaryColor : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/i_cart.png",
                width: 20,
                height: 20,
                color: currentMenu == 2 ? MyColor.primaryColor : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/i_profile.png",
                width: 20,
                height: 20,
                color: currentMenu == 3 ? MyColor.primaryColor : Colors.grey,
              ),
              label: '',
            ),
          ]),
      body: containerWidget(),
    );
  }
}
