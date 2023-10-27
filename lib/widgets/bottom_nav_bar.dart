import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
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
