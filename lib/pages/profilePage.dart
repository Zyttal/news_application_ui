import 'package:flutter/material.dart';

import '../widgets/ProfilePageWidgets/horizontal_list_card3.dart';
import '../widgets/ProfilePageWidgets/profile_details.dart';
import '../widgets/ProfilePageWidgets/profile_page_details.dart';
import '../widgets/ProfilePageWidgets/vertical_list_item.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
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
              padding: EdgeInsets.all(25),
              child: ProfilePageDetails(),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Text(
                "Every piece of Chocolate I ever atee is getting back at me.. desserts are very revengefull..",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Center(
              child: ProfileDetails(),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Elly's Post",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("View All")
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: Column(children: [
                VerticalListItem(),
                VerticalListItem(),
              ]),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Popular From Elly",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 143,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                HorizontalListCard3(),
                HorizontalListCard3(),
                HorizontalListCard3()
              ]),
            ),
            SizedBox(
              height: 25,
            )
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 84, 116, 253),
          unselectedItemColor: Colors.grey,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          items: [
            BottomNavigationBarItem(
              icon: Container(width: 40, child: Icon(Icons.home)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(width: 40, child: Icon(Icons.bookmark)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(width: 40, child: Icon(Icons.notifications)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(width: 40, child: Icon(Icons.person)),
              label: '',
            )
          ]),
    );
  }
}
