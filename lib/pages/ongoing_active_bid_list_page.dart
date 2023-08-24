import 'package:flutter/material.dart';
import 'package:lelang/widget/store_item.dart';

class OngoingActiveBidListPage extends StatelessWidget {
  const OngoingActiveBidListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(12),
              child: Text(
                "Ongoing Bids (5)",
                style: Theme.of(context).textTheme.titleLarge!,
              ),
            ),
            StoreItem(
              ongoing: true,
            ),
            StoreItem(
              ongoing: true,
            ),
            StoreItem(
              ongoing: true,
            ),
            StoreItem(
              ongoing: true,
            ),
            StoreItem(
              ongoing: true,
            ),
          ],
        ),
      ),
    );
  }
}
