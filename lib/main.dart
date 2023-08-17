import 'package:flutter/material.dart';
import 'package:lelang/constant/routes.dart';
import 'package:lelang/pages/home_page.dart';
import 'package:lelang/pages/item_detail_page.dart';
import 'package:lelang/pages/store_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        homeRoute: (context) => const HomePage(),
        storeRoute: (context) => const StorePage(),
        itemRoute: (context) => const ItemDetail(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
