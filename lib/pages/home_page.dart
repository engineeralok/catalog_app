// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widget/drawer.dart';
import 'package:catalog_app/widget/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/file/catalog.jason");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              // (CatalogModel.items != null && CatalogModel.items!.isEmpty)
              //     ?
              GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) {
              // final item = CatalogModel.items?[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GridTile(
                  header: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Colors.amberAccent,
                    ),
                    child: const Text(
                      "iPhone 13 Pro",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  footer: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Colors.amberAccent,
                    ),
                    child: const Text(
                      "299",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  child: Image.network(
                      "https://m.media-amazon.com/images/I/61i8Vjb17SL._SL1500_.jpg"),
                ),
              );
            },
            itemCount: 10,
          )
          // : const Center(
          //     child: CircularProgressIndicator(),
          //   ),
          ),
      drawer: const MyDrawer(),
    );
  }
}
