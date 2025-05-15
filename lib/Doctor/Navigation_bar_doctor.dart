import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Doctor_view_grooming_details.dart';
import 'Doctor_view_vaccination_details.dart';
import 'Tabbar.dart';
import 'doctor_notification.dart';

class NavigationBarDoctor extends StatefulWidget {
  const NavigationBarDoctor({super.key});

  @override
  State<NavigationBarDoctor> createState() => _NavigationBarDoctorState();
}

class _NavigationBarDoctorState extends State<NavigationBarDoctor> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    DoctorTapbar(),
    DoctorViewGroomingDetails(),
    DoctorNotification(),
    DoctorViewVaccinationDetails(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _widgetOptions[_selectedIndex],
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
      ),);
  }
}
