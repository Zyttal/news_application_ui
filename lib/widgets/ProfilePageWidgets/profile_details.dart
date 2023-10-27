import 'package:flutter/material.dart';

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
          color: const Color.fromARGB(255, 25, 32, 45),
          borderRadius: BorderRadius.circular(25)),
      child: const Center(
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
