import 'package:flutter/material.dart';
import 'package:pertemuan2/models/product_model.dart';
import 'package:pertemuan2/services/product_services.dart';

class ProductProviders with ChangeNotifier {
  List<ProductModel> product = [];
  Future<void> getAllProduct() async {
    try {
      List<ProductModel> data = await ProductServices().getProduct();
      product = data;
      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
