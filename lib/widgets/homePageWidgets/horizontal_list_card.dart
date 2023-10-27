import 'package:flutter/material.dart';
import 'package:news_application_ui/pages/info_page.dart';
import 'package:news_application_ui/pages/profile_page.dart';

class HorizontalListCard extends StatelessWidget {
  const HorizontalListCard({
    super.key,
    required this.imageURL,
    required this.headerString,
    required this.profilePicURL,
    required this.profileName,
    required this.datePosted,
  });

  final String imageURL, headerString, profilePicURL, profileName, datePosted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 255,
      height: 304,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(15, 25, 32, 45),
              offset: Offset(0, 3),
              blurRadius: 24,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(imageURL),
          const SizedBox(
            height: 20,
          ),
          Text(
            headerString,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: Image.network(profilePicURL),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profileName,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  datePosted,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InfoPage()));
              },
              child: Container(
                width: 37,
                height: 37,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 239, 245, 244),
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.send,
                  color: Color.fromARGB(255, 84, 116, 253),
                  size: 16,
                ),
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
