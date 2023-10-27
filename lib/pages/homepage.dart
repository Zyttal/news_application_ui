import 'dart:html';

import 'package:flutter/material.dart';
import 'package:news_application_ui/widgets/homePageWidgets/homeProfile.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/homePageWidgets/home_menu_tags.dart';
import '../widgets/homePageWidgets/horizontal_list_card.dart';
import '../widgets/homePageWidgets/horizontal_list_card2.dart';
import '../widgets/homePageWidgets/search_bar.dart';
import '../widgets/homePageWidgets/shorts_labelling.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Column(children: [
                Container(
                    margin: EdgeInsets.only(top: 50, left: 25),
                    child: HomeProfile()),
                SizedBox(
                  height: 30,
                ),
                HomeSearchBar(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: HomeMenuTags(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 305,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    HorizontalListCard(
                      imageURL:
                          'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-3_ylujrd.png',
                      headerString:
                          "Feel the Thrill on the only \nsurf simulator in Maldives 2022",
                      profilePicURL:
                          'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-4_vfsxmo.png',
                      profileName: "Sang Dong-Min",
                      datePosted: "Sep 9, 2022",
                    ),
                    HorizontalListCard(
                      imageURL:
                          'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-5_xyqsly.png',
                      headerString:
                          "Hong Kong wins over Wall\nStreet CEOs after lifting strict",
                      profilePicURL:
                          'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-6_mxagzy.png',
                      profileName: "Pan Bong",
                      datePosted: "Jan 3, 2022",
                    ),
                    HorizontalListCard(
                      imageURL:
                          'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-3_ylujrd.png',
                      headerString:
                          "Feel the Thrill on the only \nsurf simulator in Maldives 2022",
                      profilePicURL:
                          'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-4_vfsxmo.png',
                      profileName: "Sang Dong-Min",
                      datePosted: "Sep 9, 2022",
                    ),
                    HorizontalListCard(
                      imageURL:
                          'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-5_xyqsly.png',
                      headerString:
                          "Hong Kong wins over Wall\nStreet CEOs after lifting strict",
                      profilePicURL:
                          'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-6_mxagzy.png',
                      profileName: "Pan Bong",
                      datePosted: "Jan 3, 2022",
                    ),
                    SizedBox(
                      width: 25,
                    )
                  ]),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: ShortsLabelling()),
                SizedBox(
                  height: 23,
                ),
                Container(
                  height: 88,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      HorizontalListCard2(
                        imgURL:
                            'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-1_om8bgt.png',
                        headerString: "Top Trending Islands in 2022",
                        viewCount: "40,999",
                      ),
                      HorizontalListCard2(
                        imgURL:
                            'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-2_fyij6l.png',
                        headerString: "China Trading",
                        viewCount: "40,999",
                      ),
                      HorizontalListCard2(
                        imgURL:
                            'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-1_om8bgt.png',
                        headerString: "Top Trending Islands in 2022",
                        viewCount: "40,999",
                      ),
                      HorizontalListCard2(
                        imgURL:
                            'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290593/News_Application_UI_Assets/Vector-2_fyij6l.png',
                        headerString: "China Trading",
                        viewCount: "40,999",
                      ),
                      SizedBox(
                        width: 25,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
