import 'package:flutter/material.dart';

class HomeMenuTags extends StatelessWidget {
  const HomeMenuTags({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 12, color: Colors.grey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("#Health"),
          Text("#Music"),
          Text("#Technology"),
          Text("#Sport")
        ],
      ),
    );
  }
}
