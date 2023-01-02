import 'package:flutter/material.dart';

class UserModel {
  int? id;
  String? name;
  String? email;
  String? username;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
    };
  }
}
