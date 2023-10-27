import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.roboto(),
      child: Row(
        children: [
          Container(
            width: 49,
            height: 49,
            child: Image(
              image: NetworkImage(
                  'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector_nbhnue.png'),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Monday, 3 October",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
