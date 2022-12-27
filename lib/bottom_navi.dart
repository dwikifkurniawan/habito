import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habito/Notifikasi.dart';
import 'package:habito/addGoal.dart';
import 'package:habito/home.dart';
import 'package:habito/profile.dart';
import 'package:habito/theme_s.dart';
import 'package:habito/review.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final List<Widget> body = [
    HomeWidget(),
    AddGoalPage(),
    Review(),
    Notifikasi(),
    ProfilePageWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_outlined),
              activeIcon: Icon(Icons.assignment),
              label: "My Goals",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.reviews_outlined),
              activeIcon: Icon(Icons.reviews),
              label: "Review",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              activeIcon: Icon(Icons.notifications),
              label: "Notifikasi",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          selectedLabelStyle: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 12),
          selectedItemColor: Color(0xFFFB9A43),
          unselectedItemColor: Color(0xFFBDBDBD),
        ));
  }
}
