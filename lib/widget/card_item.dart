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
                  'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
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
                        Text("Price"),
                        Text("\$30.00")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor:
                              const Color.fromARGB(255, 7, 205, 146)),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
