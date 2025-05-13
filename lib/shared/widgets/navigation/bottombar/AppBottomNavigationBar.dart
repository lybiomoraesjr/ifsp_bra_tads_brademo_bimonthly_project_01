import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/route_names.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const AppBottomNavigationBar({super.key, required this.currentIndex});

  void _onItemTapped(BuildContext context, int index) {
    if (index == currentIndex) return;

    switch (index) {
      case 0:
        Navigator.pushNamed(context, RouteNames.home);
        break;
      case 1:
        Navigator.pushNamed(context, RouteNames.profile);
        break;
      case 2:
        Navigator.pushNamed(context, RouteNames.signUp);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _onItemTapped(context, index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout),
          label: 'Log out',
        ),
      ],
    );
  }
}
