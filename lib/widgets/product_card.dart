import 'package:flutter/material.dart';
import 'package:pertemuan2/helper/my_color.dart';
import 'package:pertemuan2/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            product.thumbnail!,
            height: 160,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            product.title!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            product.category!.name!,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "\$${product.price}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.add,
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(CircleBorder()),
                  padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                  backgroundColor:
                      MaterialStateProperty.all(MyColor.primaryColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
