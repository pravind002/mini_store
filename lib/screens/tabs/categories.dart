import 'dart:ui';

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
    return Scaffold(
      body: Center(
        child: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/chocolate.jpg'),
                  fit: BoxFit.fill,
                )),
                child: const Text(
                  'Chocolate',
                  style: TextStyle(fontSize: 20),
                  //textAlign: TextAlign.end,
                ),
                //color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/a.jpg'),
                  fit: BoxFit.fill,
                )),
                //child: const Text('Cadbury', style: TextStyle(fontSize: 20)),
                //color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/c.jpg'),
                  fit: BoxFit.fill,
                )),
                // child: const Text('Biscuits', style: TextStyle(fontSize: 20)),
                //color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/e.jpg'),
                  fit: BoxFit.fill,
                )),
                //child: const Text('Milk', style: TextStyle(fontSize: 20)),
                //  color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/g.jpg'),
                  fit: BoxFit.fill,
                )),
                //child: const Text('Vegetables', style: TextStyle(fontSize: 20)),
                //color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/extra.jpg'),
                  fit: BoxFit.fill,
                )),
                //child: const Text('Oil', style: TextStyle(fontSize: 20)),
                // color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/giftpack.jpg'),
                  fit: BoxFit.fill,
                )),
                //child: const Text('Maggi', style: TextStyle(fontSize: 20)),
                // color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/f.jpg'),
                  fit: BoxFit.fill,
                )),
                //child: const Text('Grocery', style: TextStyle(fontSize: 20)),
                //color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/g.jpg'),
                  fit: BoxFit.fill,
                )),
                //child: const Text('Fruites', style: TextStyle(fontSize: 20)),
                // color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/a.jpg'),
                  fit: BoxFit.fill,
                )),
                // child: const Text('Candy', style: TextStyle(fontSize: 20)),
                //color: Colors.blue,
              ),
            ]),
      ),
    );
  }
}
//Create Categories Page
/*
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
            child: SizedBox(
          //  height: 500, //MediaQuery.of(context).size.height,
          //width: 300, //MediaQuery.of(context).size.width,
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
*/