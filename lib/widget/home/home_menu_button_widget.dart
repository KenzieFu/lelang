import 'package:flutter/material.dart';

class HomeMenuButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final String route;
  const HomeMenuButtonWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Container(
        padding: EdgeInsets.all(6),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFF279EFF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              size: 35,
              icon,
              color: Color(0xFFD5FFD0),
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Color(0xFFD5FFD0), overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
      ),
    );
  }
}
