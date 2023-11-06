import 'package:flutter/material.dart';

import '../user_profile/userprofile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  var _curIndex=0;
  final List<Widget> _pages = [
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: _pages[_curIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curIndex,
        backgroundColor: Colors.pinkAccent,
        items: const <BottomNavigationBarItem> [


          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.black,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",

          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.menu),
            label: "Menu",
            backgroundColor: Colors.pinkAccent,

          ),

        ],
        onTap: (int index) {
          setState(()
          {
            _curIndex=index;

          });
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => _pages[index],
            ),
          );

        },
      ),

    );
  }
}
