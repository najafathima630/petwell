import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/Doctor/Tabbar.dart';

class DoctorNotification extends StatefulWidget {
  const DoctorNotification({super.key});

  @override
  State<DoctorNotification> createState() => _DoctorNotificationState();
}

class _DoctorNotificationState extends State<DoctorNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return DoctorTapbar();
              },
            ));
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 50.w),
          child: Text("Doctor Notification",
              style: TextStyle(color: Colors.black)),
        ),
      ),
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Container(
                height: 200.h,
                width: 200.w,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: ListTile(
                    title: Text(
                      "Notification",
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 100.h),
                      child: Text(
                        "10:00 am",
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    trailing: Text(
                      "10.11.2024",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
