import 'package:flutter/material.dart';

class ShortsLabelling extends StatelessWidget {
  const ShortsLabelling({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Short For You",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        Text(
          "View All",
          style:
              TextStyle(fontSize: 12, color: Color.fromARGB(255, 84, 116, 253)),
        )
      ],
    );
  }
}
