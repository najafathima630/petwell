import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petwell_project/Doctor/Doctor_login_page.dart';
import 'package:petwell_project/Doctor/doctor_notification.dart';
import 'package:petwell_project/Doctor/user_details.dart';

import 'Add_vaccination.dart';

class DoctorTapbar extends StatefulWidget {
  const DoctorTapbar({super.key});

  @override
  State<DoctorTapbar> createState() => _DoctorTapbarState();
}

class _DoctorTapbarState extends State<DoctorTapbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DoctorLoginPage();
                },
              ));
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.black),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DoctorNotification();
                  },
                ));
              },
            ),
          ],
          title: Padding(
            padding: EdgeInsets.only(left: 60.w),
            child: Text("User details", style: TextStyle(color: Colors.black)),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffCEEFCF),
            ),
            tabs: [
              Tab(
                child: Text(
                  'User',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Appoinment',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            User_details(), // Call the first class
            view_appoiment_details(),

            // Call the second class
          ],
        ),
      ),
    );
  }
}
