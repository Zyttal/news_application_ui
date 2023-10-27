import 'package:flutter/material.dart';

class HorizontalListCard2 extends StatelessWidget {
  const HorizontalListCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 208,
      height: 88,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(15, 25, 32, 45),
              offset: Offset(0, 3),
              blurRadius: 24,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.network(
                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-1_om8bgt.png'),
                  Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Icon(
                        Icons.play_circle,
                        color: Colors.white,
                      ))
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 108,
                    child: Text(
                      "Top Trending Islands in 2022",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.visibility,
                        size: 12,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "40,999",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
