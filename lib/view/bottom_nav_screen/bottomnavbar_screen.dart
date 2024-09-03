import 'package:flutter/material.dart';
import 'package:food_recipe/view/home_screen/home_screen.dart';

class BottomnavbarScreen extends StatefulWidget {
  const BottomnavbarScreen({super.key});

  @override
  State<BottomnavbarScreen> createState() => _BottomnavbarScreenState();
}

class _BottomnavbarScreenState extends State<BottomnavbarScreen> {
  int selectedTab = 2;
  List screens = [
    HomeScreen(),
    Container(
      color: const Color.fromARGB(255, 196, 189, 188),
    ),
    Container(
      color: Color.fromARGB(255, 1, 57, 154),
    ),
    Container(
      color: Color.fromARGB(255, 30, 188, 83),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        body: screens[selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (value) {
            selectedTab = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.redAccent,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_outline,
                ),
                activeIcon: Icon(
                  Icons.bookmark,
                  color: Colors.redAccent,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none_outlined,
                ),
                activeIcon: Icon(
                  Icons.notifications_rounded,
                  color: Colors.redAccent,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_outlined,
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.redAccent,
                ),
                label: ""),
          ],
        ));
  }
}
