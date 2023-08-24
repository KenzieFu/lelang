import 'package:flutter/material.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Text(
            "Dimenangkan",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(
            width: 20,
          ),
          Text("Terjual", style: Theme.of(context).textTheme.labelLarge!),
        ],
      ),
    );
  }
}
