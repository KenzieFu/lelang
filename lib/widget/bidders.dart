import 'package:flutter/material.dart';

import 'package:lelang/icons/custom_crown_icons.dart' as CrownIcons;

class Bidders extends StatelessWidget {
  const Bidders({super.key, this.id});
  final int? id;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 15),
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 1.5,
              color: Color.fromARGB(255, 205, 195, 195),
            )
          ]),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (id != null)
                const Icon(
                  CrownIcons.MyFlutterApp.crown,
                  size: 30,
                  color: Colors.yellow,
                ),
              const SizedBox(
                width: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg',
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                ),
              )
            ],
          ),
          Text(id == null ? 'Ivan Mataram Ha' : "You",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold)),
          Text(
            "\$120.000",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
