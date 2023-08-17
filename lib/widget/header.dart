import 'package:flutter/material.dart';
import 'package:lelang/constant/routes.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            "Lelang jauh lebih mudah dengan MIXA",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(storeRoute);
            },
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                fit: BoxFit.fill,
                height: 60.0,
                width: 60.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
