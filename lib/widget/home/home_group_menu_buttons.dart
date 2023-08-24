import 'package:flutter/material.dart';
import 'package:lelang/constant/routes.dart';

import 'home_menu_button_widget.dart';

class HomeGroupButtonsWidget extends StatelessWidget {
  const HomeGroupButtonsWidget({super.key});

  // Bantu line 51 min, add tombol

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
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
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Menu',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color(0xFF0C356A),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    HomeMenuButtonWidget(
                      icon: Icons.leaderboard,
                      text: "Stats",
                      route: '',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    HomeMenuButtonWidget(
                      icon: Icons.store,
                      text: "Store",
                      route: storeRoute,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    HomeMenuButtonWidget(
                      icon: Icons.money,
                      text: "Transaksi",
                      route: transactionRoute,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
