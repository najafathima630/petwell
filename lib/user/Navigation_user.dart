import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petwell_project/user/pet_profile_page.dart';
import 'package:petwell_project/user/user_homa_page.dart';

import 'doctor_details_page.dart';
import 'notification.dart';

class NavigationBarMechanic extends StatefulWidget {
  const NavigationBarMechanic({super.key});

  @override
  State<NavigationBarMechanic> createState() => _NavigationBarMechanicState();
}

class _NavigationBarMechanicState extends State<NavigationBarMechanic> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    user_homepage(),
    UserNotificationScreen(),
    doctor_details(),
    PetProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active, color: Colors.black),
            label: 'Notifications',
            backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital, color: Colors.black),
            label: 'Doctor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets, color: Colors.black),
            label: ' profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 4,
      ),
    );
  }
}
