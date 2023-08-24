import 'package:flutter/material.dart';
import 'package:lelang/constant/routes.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(itemRoute);
      },
      child: Card(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          width: 220,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg',
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: 200.0,
                ),
              ),
              Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Indoor"),
                        Text("Cactus Lily"),
                        Text("Initial Price"),
                        Text("\$30.00")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
