import 'dart:convert';

import 'package:pertemuan2/models/product_model.dart';
import 'package:http/http.dart' as http;

import '../config.dart';

class ProductServices {
  //membuat autentikasi untuk login menggunakan api
  Future<List<ProductModel>> getProduct() async {
    var url = Uri.parse("${Config.apiUrl}/api/products");
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      url,
      headers: headers,
    );
    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> product = [];

      for (var item in data) {
        product.add(ProductModel.fromJson(item));
      }
      return product;
    } else {
      throw Exception("Gagal get data product");
    }
  }
}
