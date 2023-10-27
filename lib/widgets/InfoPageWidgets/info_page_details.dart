import 'package:flutter/material.dart';

class InfoPageDetails extends StatelessWidget {
  const InfoPageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Set width to device width
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Unravel mysteries of the Maldives",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          const SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.0,
                      color: const Color.fromARGB(255, 238, 238, 238)),
                  borderRadius: BorderRadius.circular(25)),
              child: Row(children: [
                Image.network(
                    'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-7_y5gxz9.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Keanu Carpent May 17 • 8 min read",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Just say anything, George, say what ever's natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it's 8:00. Hey, McFly, I thought I told you never",
            style: TextStyle(
                fontSize: 16, height: 1.5, fontWeight: FontWeight.w600),
          ),
        ]),
      ),
    );
  }
}
