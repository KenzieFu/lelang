import 'package:flutter/material.dart';
import 'package:lelang/Model/Category.dart';
import 'package:lelang/constant/category.dart';
import 'package:lelang/widget/card_item.dart';
import 'package:lelang/widget/category_button.dart';
import 'package:lelang/widget/header.dart';

class LelangPage extends StatefulWidget {
  const LelangPage({super.key});

  @override
  State<LelangPage> createState() => _LelangPageState();
}

class _LelangPageState extends State<LelangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 248, 254),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Header(),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                child: Text(
                  "Kategori Pencarian",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
                ),
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
                height: 20,
              ),
              Text(
                "Sedang Ramai",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
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
