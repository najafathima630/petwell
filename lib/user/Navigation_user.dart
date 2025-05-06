import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        items: [
          BottomNavigationBarItem(
            icon:  SvgPicture.asset('assets/Vector (4).svg', width: 24, height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/hugeicons_notification-bubble.svg', width: 24, height: 24),
            label: 'Notifications',
            backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/healthicons_doctor-24px.svg', width: 24, height: 24),
            label: 'Doctor',
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset('assets/mdi_pets.svg', width: 24, height: 24),
            label: ' profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        iconSize: 30,
        selectedIconTheme: IconThemeData(color: Colors.green),
        onTap: _onItemTapped,
        elevation: 4,
      ),
    );
  }
}
