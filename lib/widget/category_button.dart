import 'package:flutter/material.dart';
import 'package:lelang/Model/Category.dart';

class CateButton extends StatelessWidget {
  const CateButton({super.key, required this.cate, required this.selected});
  final bool selected;
  final Category cate;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13),
      width: 100,
      height: 40,
      child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 7, 205, 146)))),
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 6, 204, 142)),
          ),
          onPressed: () {},
          child: Text(
            cate.category,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Colors.white,
                  fontSize: 15,
                ),
          )),
    );
  }
}
