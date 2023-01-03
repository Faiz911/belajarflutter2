import 'dart:convert';

import 'package:pertemuan2/models/user_models.dart';
import 'package:http/http.dart' as http;

import '../config.dart';

class AuthService {
  //membuat autentikasi untuk login menggunakan api
  Future<UserModel> login({String email = "", String password = ""}) async {
    var url = Uri.parse("${Config.apiUrl}/api/login");
    var headers = {'Content-Type': 'application/json'};
    var payload = jsonEncode({"email": email, "password": password});

    var response = await http.post(url, headers: headers, body: payload);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = "Bearer ${data['access_token']}";
      return user;
    } else {
      throw Exception("Proses login gagal dilakukan");
    }
  }

  Future<UserModel> register({
    String name = "",
    String email = "",
    String username = "",
    String password = "",
  }) async {
    var url = Uri.parse('${Config.apiUrl}/api/register');
    var headers = {'Content-Type': 'application/json'};
    var payload = jsonEncode({
      "name": name,
      "email": email,
      "username": username,
      "password": password,
    });

    var response = await http.post(url, headers: headers, body: payload);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = "Bearer ${data['access_token']}";
      return user;
    } else {
      throw Exception("Proses signup gagal dilakukan");
    }
  }
}
