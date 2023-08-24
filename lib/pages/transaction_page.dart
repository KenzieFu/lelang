import 'package:flutter/material.dart';
import 'package:lelang/widget/card_item.dart';
import 'package:lelang/widget/store_item.dart';
import 'package:lelang/widget/transaction/transaction_header_widget.dart';
import 'package:lelang/widget/transaction/transaction_won_item.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaksi Berlangsung"),
      ),
      body: Container(
        padding: const EdgeInsets.all(4),
        child: const Column(children: [
          TransactionHeader(),
          Divider(
            thickness: 2,
            color: Color(0xFF0C356A),
          ),
          WonAuctionItem()
        ]),
      ),
    );
  }
}
