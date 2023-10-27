import 'package:flutter/material.dart';

import '../widgets/ProfilePageWidgets/profile_page_details.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        ]),
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

class VerticalListItem extends StatelessWidget {
  const VerticalListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Image.network(
              'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-10_xhxoyt.png'),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "News: Politics",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Iran's raging protests\nFifth Iranian paramilitary me...",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(children: [
                      Icon(Icons.calendar_month),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "16th May",
                        style: TextStyle(fontSize: 11),
                      )
                    ]),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.timer_rounded),
                          SizedBox(
                            width: 5,
                          ),
                          Text("09:32 pm",
                              style: TextStyle(
                                fontSize: 11,
                              ))
                        ]),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 95,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 25, 32, 45),
          borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "54.21k",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Followers",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 14,
              ),
              VerticalDivider(
                color: Color.fromARGB(100, 193, 212, 249),
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                children: [
                  Text(
                    "2.11k",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Posts",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                width: 14,
              ),
              VerticalDivider(color: Color.fromARGB(100, 193, 212, 249)),
              SizedBox(
                width: 14,
              ),
              Column(
                children: [
                  Text(
                    "36.40k",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
