import 'package:flutter/material.dart';
import 'package:pertemuan2/helper/my_color.dart';
import 'package:pertemuan2/models/product_model.dart';
import 'package:pertemuan2/providers/product_providers.dart';
import 'package:pertemuan2/widgets/product_card.dart';
import 'package:provider/provider.dart';

import '../../models/user_models.dart';
import '../../providers/auth_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<ProductProviders>(context, listen: false).getAllProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    ProductProviders productProviders = Provider.of<ProductProviders>(context);
    List<ProductModel> product = productProviders.product;
    Widget headerWidget(UserModel user) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello ${user.name}",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Mau belanja apa hari ini ?")
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/avatar_image.jpg'),
            radius: 30,
          ),
        ],
      );
    }

    Widget searchProductWidget() {
      return Container(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.grey[200]),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 16,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                  child: TextFormField(
                style: TextStyle(fontSize: 16, color: Colors.black),
                decoration:
                    InputDecoration.collapsed(hintText: 'Search Product'),
              )),
            ],
          ),
        ),
      );
    }

    Widget categoryWidget() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyColor.primaryColor),
              child: Text(
                'Featured',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: Text(
                'Computer',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: Text(
                'Headset',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: Text(
                'Phone',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: Text(
                'Mouse',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: Text(
                'Keyboard',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      );
    }

    Widget trendingSalesWidget() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Trending Sales",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "See All",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: MyColor.primaryColor),
            )
          ],
        ),
      );
    }

    Widget mainWidget() {
      return Container(
          margin: EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: product.map((item) => ProductCard(item)).toList(),
              )));
    }

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          child: Column(
            children: [
              headerWidget(user),
              searchProductWidget(),
              categoryWidget(),
              trendingSalesWidget(),
              mainWidget()
            ],
          ),
        ),
      )),
    );
  }
}
