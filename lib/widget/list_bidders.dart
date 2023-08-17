import 'package:flutter/material.dart';

class ListBidders extends StatelessWidget {
  const ListBidders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Top Bidders",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        Container(
          margin: const EdgeInsets.only(top: 0),
          height: 300,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView(
              primary: false,
              shrinkWrap: true,
              children: const [
                
              ],
            ),
          ),
        )
      ],
    );
  }
}
