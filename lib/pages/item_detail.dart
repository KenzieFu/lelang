import 'package:flutter/material.dart';
import 'package:lelang/widget/tab_bar.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

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
      body: Column(children: [
        Stack(
          children: [
            Image.network(
                'https://images.pexels.com/videos/3045163/free-video-3045163.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
                fit: BoxFit.fill),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
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
                    TextButton(onPressed: () {}, child: const Text("BID"))
                  ],
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
                      const Text("Owner"),
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
                          const Text('Ivandohan'),
                        ],
                      )
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Berakhir dalam"),
                      SizedBox(
                        height: 10,
                      ),
                      Text('01:52:22'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text("Details"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Bidders"),
                ],
              )
            ],
          ),
        ),
        const SetBidBar(),
      ]),
    );
  }
}
