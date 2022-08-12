import 'package:flutter/material.dart';

class search_bar extends StatelessWidget {
  const search_bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
      // ignore: prefer_const_literals_to_create_immutables
      child: Row(children: [
        // ignore: prefer_const_constructors
        Icon(Icons.search, color: Colors.white),
        const SizedBox(
          width: 5,
        ),
        // ignore: prefer_const_constructors
        Text(
          "Search...",
          style: const TextStyle(color: Colors.white),
        )
      ]),
    );
  }
}
