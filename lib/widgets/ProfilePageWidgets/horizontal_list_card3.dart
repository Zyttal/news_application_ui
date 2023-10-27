import 'package:flutter/material.dart';

class HorizontalListCard3 extends StatelessWidget {
  const HorizontalListCard3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Image.network(
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-12_u1uysr.png'),
    );
  }
}
