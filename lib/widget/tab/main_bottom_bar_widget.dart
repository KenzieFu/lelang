import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  final void Function(int) setCurrentIndex;
  final int currentIndex;

  const BottomBarWidget({
    super.key,
    required this.currentIndex,
    required this.setCurrentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: Color(0xFF0C356A),
      selectedItemColor: Color(0xFFD5FFD0),
      unselectedItemColor: Colors.white,
      onTap: (index) {
        setCurrentIndex(index);
      },
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sell),
          label: 'Market',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: 'MyBid',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work_history_rounded),
          label: 'Riwayat',
        ),
      ],
    );
  }
}
