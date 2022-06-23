import 'package:flutter/material.dart';
//0import 'package:mini_store/screens/components/body.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const <Widget>[
        Text(
          "Categories",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        Categories(),
      ],
    );
  }
}
//Create Categories Page

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Row(children: const [
            Expanded(
              child: Text(
                'First Product',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: Text(
                'Second Product',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ]),
        )),
      ),
    );
  }
}
