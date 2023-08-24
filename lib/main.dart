import 'package:flutter/material.dart';
import 'package:lelang/constant/routes.dart';
import 'package:lelang/pages/auction_item_setBid_page.dart';
import 'package:lelang/pages/lelang_page.dart';
import 'package:lelang/pages/initial_page.dart';
import 'package:lelang/pages/item_detail_page.dart';
import 'package:lelang/pages/store_page.dart';
import 'package:lelang/pages/transaction_page.dart';
import 'package:lelang/pages/transaction_won_bid_detail_page.dart';

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
      debugShowCheckedModeBanner: false,
      routes: {
        /*  homeRoute: (context) => const HomePage(), */
        lelangRoute: (context) => const LelangPage(),
        storeRoute: (context) => const StorePage(),
        itemRoute: (context) => const ItemDetailPage(),
        auctionSetBidRoute: (context) => const SetBid(),
        transactionRoute: (context) => const TransactionPage(),
        transactionWonRoute: (context) => const TransactionWonBidDetailPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InitialScreen(),
    );
  }
}
