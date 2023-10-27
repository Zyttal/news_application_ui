import 'package:flutter/material.dart';

import '../widgets/InfoPageWidgets/info_page_details.dart';

class InfoPage extends StatelessWidget {
  InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.network(
                  'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290595/News_Application_UI_Assets/Rectangle_nwqvpg.png'),
              Positioned(
                top: 326,
                child: InfoPageDetails(),
              )
            ],
          ),
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
