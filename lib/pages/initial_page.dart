import 'package:flutter/material.dart';
import 'package:lelang/pages/home_page.dart';
import 'package:lelang/pages/lelang_page.dart';

import '../widget/home/home_appbar_widget.dart';
import '../widget/tab/main_bottom_bar_widget.dart';

class InitialScreen extends StatefulWidget {
  InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int _currentIndex = 0;

  List mainScreens = [
    HomePage(),
    LelangPage(),
    Container(),
    Container(),
  ];

  setCurrentIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HomeAppBarWidget(),
      ),
      body: mainScreens[_currentIndex],
      bottomNavigationBar: BottomBarWidget(
        currentIndex: _currentIndex,
        setCurrentIndex: setCurrentIndex,
      ),
    );
  }
}
