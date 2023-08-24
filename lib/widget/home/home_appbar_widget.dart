import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0C356A),
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      height: 100,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.search),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text("Cari barang lelang ..."),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.person,
              color: Color(0xFF0C356A),
            ),
          )
        ],
      ),
    );
  }
}
