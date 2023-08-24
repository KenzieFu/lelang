import 'package:flutter/material.dart';
import 'package:lelang/constant/routes.dart';

class SetBidBar extends StatelessWidget {
  const SetBidBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 46, 49, 77)),
        width: 310,
        height: 90,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Highest Bid",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white)),
              Text("\$120.000",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white)),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(auctionSetBidRoute);
            },
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                padding: const MaterialStatePropertyAll(EdgeInsets.all(15)),
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 249, 240, 141))),
            child: Text(
              "Place a Bid",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 21),
            ),
          )
        ]),
      ),
    );
  }
}
