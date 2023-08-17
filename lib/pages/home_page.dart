import 'package:flutter/material.dart';
import 'package:lelang/Model/Category.dart';
import 'package:lelang/constant/category.dart';
import 'package:lelang/widget/card_item.dart';
import 'package:lelang/widget/category_button.dart';
import 'package:lelang/widget/header.dart';
import 'package:lelang/widget/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _searchKey;

  @override
  void initState() {
    _searchKey = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchKey.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 248, 254),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Header(),
              const SizedBox(
                height: 10,
              ),
              SearchItem(searchkey: _searchKey),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CateButton(
                          cate: Category("all", "All"),
                          selected: false,
                        ),
                        ...cateDummy.map((e) {
                          return CateButton(
                            selected: false,
                            cate: e,
                          );
                        }).toList(),
                      ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CardItem(),
                      CardItem(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
