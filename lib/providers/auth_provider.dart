import 'package:flutter/material.dart';
import 'package:pertemuan2/services/auth_service.dart';

import '../models/user_models.dart';

class AuthProvider with ChangeNotifier {
  UserModel _user = new UserModel();
  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  // bool login({String email = "", String password = ""}) {
  //   if (email == "testing@store.com" && password == "testing") {
  //     user = UserModel(
  //         id: 1,
  //         name: "Testing User",
  //         email: "testing@gmail.com",
  //         username: "Testing");

  //     notifyListeners();
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  Future<bool> login({
    String email = "",
    String password = "",
  }) async {
    try {
      UserModel user =
          await AuthService().login(email: email, password: password);
      _user = user;
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future<bool> register({
    String name = "",
    String email = "",
    String username = "",
    String password = "",
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        email: email,
        username: username,
        password: password,
      );
      _user = user;
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
