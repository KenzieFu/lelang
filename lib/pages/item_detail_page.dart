import 'package:flutter/material.dart';
import 'package:lelang/pages/auction_item_setBid_page.dart';
import 'package:lelang/widget/auction_item_list_of_bidders.dart';
import 'package:lelang/widget/detail_item.dart';

import '../widget/tab_bar.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({Key? key}) : super(key: key);

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  final index = "details";

  Widget currentWidget = const DetailItem();

  void switchBar(String text) {
    if (text == 'details') {
      setState(() {
        currentWidget = const DetailItem();
      });
    } else if (text == "bidders") {
      setState(() {
        currentWidget = const AuctionItemListOfBiddersWidget();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color: Colors.white,
            weight: 1000,
            size: 40,
            shadows: [
              Shadow(
                blurRadius: 5,
                color: Colors.black,
              )
            ]),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  Image.network(
                    'https://imgx.gridoto.com/crop/0x0:0x0/700x465/photo/2019/07/01/2596012333.jpg',
                    height: 350,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cactus Aja",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Owner",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.network(
                                      'https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg',
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text('Anonim'),
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Berakhir dalam",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('01:52:22'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                switchBar("details");
                              },
                              child: const Text('Details')),
                          const SizedBox(
                            width: 20,
                          ),
                          TextButton(
                              onPressed: () {
                                switchBar("bidders");
                              },
                              child: const Text('Bidders')),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      currentWidget,
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ]),
          ),
          const SetBidBar(),
        ],
      ),
    );
  }
}
