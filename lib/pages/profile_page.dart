import 'package:flutter/material.dart';

import '../widgets/ProfilePageWidgets/horizontal_list_card3.dart';
import '../widgets/ProfilePageWidgets/profile_details.dart';
import '../widgets/ProfilePageWidgets/profile_page_details.dart';
import '../widgets/ProfilePageWidgets/vertical_list_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 252, 252),
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            Navigator.of(context).pop(); // Swipe right, navigate back
          }
        },
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: const EdgeInsets.all(25),
              child: const ProfilePageDetails(),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: const Text(
                "Every piece of Chocolate I ever atee is getting back at me.. desserts are very revengefull..",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Center(
              child: ProfileDetails(),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Elly's Post",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 84, 116, 253)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25),
              child: const Column(children: [
                VerticalListItem(
                  imgURL:
                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-10_xhxoyt.png',
                  category: "News: Politics",
                  header:
                      "Iran's raging protests\nFifth Iranian paramilitary me...",
                  date: "16th May",
                  time: "09:32 pm",
                ),
                SizedBox(
                  height: 15,
                ),
                VerticalListItem(
                  imgURL:
                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-11_gmmwtk.png',
                  category: "News: Science",
                  header:
                      "Putin to host ceremony\nannexxing occupied Ukrainia...",
                  date: "11th May",
                  time: "10:15 am",
                ),
              ]),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25),
              child: const Text(
                "Popular From Elly",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 143,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: const [
                HorizontalListCard3(
                  imgURL:
                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-12_u1uysr.png',
                ),
                HorizontalListCard3(
                  imgURL:
                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-8_nbuumk.png',
                ),
                HorizontalListCard3(
                  imgURL:
                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-12_u1uysr.png',
                ),
                HorizontalListCard3(
                  imgURL:
                      'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-8_nbuumk.png',
                ),
                SizedBox(
                  width: 25,
                )
              ]),
            ),
            const SizedBox(
              height: 25,
            )
          ]),
        ),
      ),
    );
  }
}
