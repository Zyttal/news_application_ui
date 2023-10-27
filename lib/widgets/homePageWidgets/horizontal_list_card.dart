import 'package:flutter/material.dart';
import 'package:news_application_ui/pages/infoPage.dart';
import 'package:news_application_ui/pages/profilePage.dart';

class HorizontalListCard extends StatelessWidget {
  const HorizontalListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 255,
      height: 304,
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
        padding: EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(
              'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-3_ylujrd.png'),
          SizedBox(
            height: 20,
          ),
          Text(
            "Feel the Thrill on the only \nsurf simulator in Maldives 2022",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: Image.network(
                        'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-4_vfsxmo.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sang Dong-Min",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Sep 9, 2022",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InfoPage()));
                    },
                    child: Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 245, 244),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.send,
                        color: Color.fromARGB(255, 84, 116, 253),
                        size: 16,
                      ),
                    ),
                  )
                ]),
          ),
        ]),
      ),
    );
  }
}
