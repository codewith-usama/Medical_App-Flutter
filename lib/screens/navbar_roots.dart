import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../app_color.dart' as app_color;
import '../constant.dart' as cons;

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({Key? key}) : super(key: key);

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {

  int _selectedIndex = 0;
  final _screen = [
    // Home Screen
    HomeScreen(),
    // Messages Screen
    Container(),
    // Schedule Screen
    Container(),
    // Settings Screen
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screen[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: app_color.kWelcomeScreenComponent,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: cons.kNavBarLabelStyle,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }, items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "home",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "home",
          ),
        ],
        ),
      ),
    );
  }
}
