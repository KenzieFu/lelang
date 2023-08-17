import 'package:flutter/material.dart';

class StoreItem extends StatelessWidget {
  const StoreItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                blurStyle: BlurStyle.outer,
                color: Color.fromARGB(22, 109, 94, 94),
                spreadRadius: 1.5)
          ]),
      padding: const EdgeInsets.all(18),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
            fit: BoxFit.fill,
            width: 100,
            height: 120,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cactus Lily",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Text("Tanaman"),
            // ignore: prefer_const_constructors
            Text("56 orang"),
            const Text("Sisa Waktu : 02:00:00"),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Bid",
                )),
          ],
        )
      ]),
    );
  }
}
