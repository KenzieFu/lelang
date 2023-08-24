import 'package:flutter/material.dart';
import 'package:lelang/constant/routes.dart';

class OngoingCardItem extends StatelessWidget {
  const OngoingCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(itemRoute);
      },
      child: Container(
        margin: EdgeInsets.only(right: 30),
        padding: EdgeInsets.all(5),
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4), // Warna bayangan
              spreadRadius: 2, // Radius sebaran bayangan
              blurRadius: 7, // Radius blur bayangan
              offset: Offset(0, 0), // Posisi offset bayangan (x, y)
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Cactus"),
            SizedBox(
              height: 5,
            ),
            Image.network(
              'https://imgx.gridoto.com/crop/0x0:0x0/700x465/photo/2019/07/01/2596012333.jpg',
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.people,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('56')
                      ],
                    ),
                    const Text('Lose')
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.lock_clock,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('12:00:00')
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
