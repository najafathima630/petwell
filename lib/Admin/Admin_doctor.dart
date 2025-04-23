import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_dashboard.dart';

class AdminDoctor extends StatefulWidget {
  const AdminDoctor({super.key});

  @override
  State<AdminDoctor> createState() => _AdminDoctorState();
}

class _AdminDoctorState extends State<AdminDoctor> {
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
                return UserDetails();
              },
            ));
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 80.w),
          child: Text("DOCTOR", style: TextStyle(color: Colors.black)),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder( stream: FirebaseFirestore.instance
        .collection("Doctor_signup")
        .snapshots(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      }
      if (!snapshot.hasData) {
        return Center(child: Text("no data found"));
      }
      var Doctor = snapshot.data!.docs;
      return ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Card(
              elevation: 3,
              margin: EdgeInsets.symmetric(vertical: 10),
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20.r)),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xffCF6A6AF0E4E4),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey[400],
                      ),
                      child: Icon(Icons.person,
                          size: 30.sp, color: Colors.white),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Doctor[index]["Name"],
                              style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600)),
                          Text("Experience",
                              style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          Text(
                            "Specialist",
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Text("Contact number",
                              style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 4.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    } ),
          ),
        ],
      ),
    );
  }
}
