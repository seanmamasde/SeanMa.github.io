import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

enum CurrentTab {
  about,
}

class AppMenu extends StatefulWidget {
  const AppMenu({super.key});

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: GNav(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        duration: const Duration(milliseconds: 600),
        gap: 8.5,
        tabs: [
          GButton(
            iconActiveColor: Colors.purple,
            iconColor: Colors.black,
            textColor: Colors.purple,
            backgroundColor: Colors.purple.withOpacity(.2),
            iconSize: 24,
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            iconActiveColor: Colors.pink,
            iconColor: Colors.black,
            textColor: Colors.pink,
            backgroundColor: Colors.pink.withOpacity(.2),
            iconSize: 24,
            icon: Icons.favorite,
            text: 'Likes',
          ),
          GButton(
            iconActiveColor: Colors.amber[600],
            iconColor: Colors.black,
            textColor: Colors.amber[600],
            backgroundColor: Colors.amber[600]!.withOpacity(.2),
            iconSize: 24,
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            iconActiveColor: Colors.teal,
            iconColor: Colors.black,
            textColor: Colors.teal,
            backgroundColor: Colors.teal.withOpacity(.2),
            iconSize: 24,
            icon: Icons.person,
            text: 'Profile',
          )
        ],
      ),
    );
  }
}
