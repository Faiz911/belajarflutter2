import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pertemuan2/helper/my_color.dart';
import 'package:pertemuan2/main.dart';
import 'package:pertemuan2/pages/login.dart';
import 'package:pertemuan2/pages/home/main_home.dart';
import 'package:pertemuan2/pages/home/profile.dart';
import 'package:pertemuan2/pages/signup.dart';
import 'package:pertemuan2/pages/splashscreen.dart';
import 'package:pertemuan2/providers/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: MaterialApp(
        routes: {
          '': (context) => SplashScreen(),
          '/login': (context) => LoginPage(),
          '/main_home': (context) => MainHome(),
          '/signUp': (context) => SignUpPage(),
          '/profile': (context) => ProfilePage(),
        },
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
