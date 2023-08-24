import 'package:flutter/material.dart';

class StoreItem extends StatelessWidget {
  const StoreItem({super.key, this.ongoing});
  final bool? ongoing;
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
      child: Stack(children: [
        Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg',
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
            ],
          )
        ]),
        if(ongoing!=null)
        Positioned(
          top: 0,
          right: 0,
          child: Text(
            "Lose",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ]),
    );
  }
}
