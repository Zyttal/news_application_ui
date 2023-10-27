import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 330,
          height: 49,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "Search article...",
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: 12),
                contentPadding: EdgeInsets.all(10)),
          ),
        ),
        Positioned(
            right: 0,
            child: Container(
              height: 49,
              width: 47,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 84, 116, 253),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.search,
                color: Colors.white,
                weight: 1,
              ),
            ))
      ],
    );
  }
}
