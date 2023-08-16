import 'package:flutter/material.dart';

class SearchItem extends StatefulWidget {
  const SearchItem({super.key, required this.searchkey});
  final TextEditingController searchkey;
  @override
  State<SearchItem> createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(244, 247, 254, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: widget.searchkey,
              maxLines: 1,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search Plants"),
            ),
          ),
        ),
        TextButton(onPressed: () {}, child: const Text("jshdkajhdaksS"))
      ],
    );
  }
}
