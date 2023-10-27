import 'package:flutter/material.dart';

class HorizontalListCard3 extends StatelessWidget {
  const HorizontalListCard3({
    super.key,
    required this.imgURL,
  });

  final String imgURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Image.network(imgURL),
    );
  }
}
