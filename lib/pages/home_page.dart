import 'package:catalog_app/widget/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: const Center(
        child: Text("Hi! I am flutter"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
