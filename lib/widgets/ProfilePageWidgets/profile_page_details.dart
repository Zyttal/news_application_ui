import 'package:flutter/material.dart';

class ProfilePageDetails extends StatelessWidget {
  const ProfilePageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-9_n0sajt.png',
          height: 70,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Elly Byers",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Author & Writer",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            )
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 109,
          height: 42,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 84, 116, 253),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            "Following",
            style: TextStyle(color: Colors.white, fontSize: 12),
          )),
        )
      ],
    );
  }
}
