import 'package:flutter/material.dart';

class SetBidBar extends StatelessWidget {
  const SetBidBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Row(
          children: [
            Column(
              children: [
                Text("Current Highest Bid"),
                Text('\$120.000'),
              ],
            ),
            Column(),
          ],
        ));
  }
}
