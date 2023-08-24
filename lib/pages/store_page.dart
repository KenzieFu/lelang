import 'package:flutter/material.dart';
import 'package:lelang/widget/card_item.dart';
import 'package:lelang/widget/store_item.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 248, 254),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Store",
          textAlign: TextAlign.center,
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          StoreItem(),
          StoreItem(),
          StoreItem(),
          StoreItem(),
        ],
      ),
    );
  }
}
