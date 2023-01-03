import 'dart:ffi';

import 'package:pertemuan2/models/category_model.dart';
import 'package:pertemuan2/models/images_model.dart';

class ProductModel {
  int? id;
  String? title;
  String? description;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? thumbnail;
  DateTime? createdAt;
  DateTime? updatedAt;
  CategoryModel? category;
  List<ImagesModel>? images;

  ProductModel(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.brand,
      this.thumbnail,
      this.createdAt,
      this.updatedAt,
      this.category,
      this.images});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = double.parse(json['price'].toString());
    discountPercentage = double.parse(json['discountPercentage'].toString());
    rating = double.parse(json['rating'].toString());
    // price = json['price'].toDouble();
    // discountPercentage = json['discountPercentage'].toDouble();
    // rating = json['rating'].toDouble();
    stock = json['stock'];
    brand = json['brand'];
    thumbnail = json['thumbnail'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    category = CategoryModel.fromJson(json['category']);
    images = json['images']
        .map<ImagesModel>((image) => ImagesModel.fromJson(image))
        .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      'stock': stock,
      'brand': brand,
      'thumbnail': thumbnail,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'category': category!.toJson(),
      'images': images!.map((item) => item.toJson()).toList(),
    };
  }
}
