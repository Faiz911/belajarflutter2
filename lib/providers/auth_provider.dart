import 'package:flutter/material.dart';

import '../models/user_models.dart';

class AuthProvider with ChangeNotifier {
  String token = "";
  UserModel _user = new UserModel();
  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  bool login({String email = "", String password = ""}) {
    if (email == "testing@store.com" && password == "testing") {
      user = UserModel(
          id: 1,
          name: "Testing User",
          email: "testing@gmail.com",
          username: "Testing");
      token = "token";
      notifyListeners();
      return true;
    } else {
      return false;
    }
  }
}
