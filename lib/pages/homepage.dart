import 'dart:html';

import 'package:flutter/material.dart';
import 'package:news_application_ui/widgets/homePageWidgets/homeProfile.dart';

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
                    HorizontalListCard(),
                    HorizontalListCard(),
                    HorizontalListCard(),
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
                      HorizontalListCard2(),
                      HorizontalListCard2(),
                      HorizontalListCard2()
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
