import 'package:flutter/material.dart';
import 'package:lelang/widget/card/card_item_ongoing_item_bid.dart';
import 'package:lelang/widget/home/home_group_menu_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(children: [
        const HomeGroupButtonsWidget(),
        const SizedBox(
          height: 20,
        ),
        Row(children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4), // Warna bayangan
                    spreadRadius: 2, // Radius sebaran bayangan
                    blurRadius: 7, // Radius blur bayangan
                    offset: Offset(0, 3), // Posisi offset bayangan (x, y)
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    '5 Ongoing Bids',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0xFF0C356A),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OngoingCardItem(),
                          OngoingCardItem(),
                          OngoingCardItem(),
                          ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_right_alt_outlined),
                              label: const Text("More"))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 20,
        ),
        Row(children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4), // Warna bayangan
                    spreadRadius: 2, // Radius sebaran bayangan
                    blurRadius: 7, // Radius blur bayangan
                    offset: Offset(0, 3), // Posisi offset bayangan (x, y)
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    '3 Unfinished Transaction',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ]),
    ));
  }
}
