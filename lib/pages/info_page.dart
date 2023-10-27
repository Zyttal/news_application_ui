// ignore: file_names
import 'package:flutter/material.dart';
import 'package:news_application_ui/widgets/bottom_nav_bar.dart';

import '../widgets/InfoPageWidgets/info_page_details.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! > 0) {
              Navigator.of(context).pop(); // Swipe right, navigate back
            }
          },
          child: SingleChildScrollView(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                    'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290595/News_Application_UI_Assets/Rectangle_nwqvpg.png'),
                const Positioned(
                  top: 350,
                  child: InfoPageDetails(),
                ),
                Positioned(
                    top: 315,
                    left: 153,
                    child: Image.network(
                        'https://res.cloudinary.com/dbwwffypj/image/upload/v1698427170/News_Application_UI_Assets/Group_kmrznv.png')),
                Positioned(
                    left: 30,
                    top: 30,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    )),
                Positioned(
                    top: 30,
                    right: 30,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.bookmark,
                        color: Colors.white,
                        size: 20,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
