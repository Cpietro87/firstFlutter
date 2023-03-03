// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        haptic: true, // haptic feedback
        tabBorderRadius: 15, 
        curve: Curves.easeOutExpo, // tab animation curves
        duration: Duration(milliseconds: 900), // tab animation duration
        gap: 8, // the tab button gap between icon and text 
        color: Colors.white, // unselected icon color
        activeColor: Colors.grey, // selected icon and text color
        iconSize: 24, // tab button icon size
        tabBackgroundColor: Colors.purple, // selected tab background color
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), 
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite_border,
            text: 'favorite',),
          GButton(
            icon: Icons.search,
            text: 'search',
            ),
          GButton(
            icon: Icons.settings,
            text: 'settings',),
        ],
      ),
    );
  }
}