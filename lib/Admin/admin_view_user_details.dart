import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/Admin/admin_user.dart';

class AdminViewUserDetails extends StatefulWidget {
  const AdminViewUserDetails(required, {super.key, required this. id,});

final id;
  @override
  State<AdminViewUserDetails> createState() => _AdminViewUserDetailsState();
}

class _AdminViewUserDetailsState extends State<AdminViewUserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff5CB15A),
          title: Padding(
            padding: EdgeInsets.only(left: 150.w),
            child: Text(
              "USER",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 20.sp),
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AdminUser();
                  },
                ));
              },
              icon: Icon(Icons.arrow_back_ios_new)),
        ),
        body: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection("user_signup")
                .doc()
                .get(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text("User not found"),
                );
              }
              if (!snapshot.hasData || snapshot.data == null) {
                return Center(
                  child: Text("No data founded"),
                );
              }
              final userdata = snapshot.data!.data() as Map<String, dynamic>;

              return ListView(children: [
                Column(children: [
                  Row(children: [
                    Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 10.h),
                        child: Card(
                          child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 30.h, left: 130.w),
                                        child: CircleAvatar(
                                          radius: 40.r,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 130.w, top: 10.h),
                                        child: Text(
                                          userdata["name"] ?? "",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 140.w),
                                        child: Text(userdata["place"] ?? ""),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 30.w, top: 30.h),
                                        child: Text(
                                          "User name",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 30.w, right: 40.r),
                                    child: Container(
                                      child: Text(userdata["name"] ?? ""),
                                      width: 450.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12.sp)),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30.w),
                                        child: Text(
                                          "Phone number",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 30.w, right: 40.r),
                                    child: Container(
                                      child: Text(userdata["number"] ?? ""),
                                      width: 450.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12.sp)),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30.w),
                                        child: Text(
                                          "Eamil",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 30.w, right: 40.r),
                                    child: Container(
                                      child: Text(userdata["email"]),
                                      width: 450.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12.sp)),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30.w),
                                        child: Text(
                                          "Place",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 30.w, right: 40.r),
                                    child: Container(
                                      child: Text(userdata["place"] ?? ""),
                                      width: 450.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12.sp)),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30.w),
                                        child: Text(
                                          "password",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 30.w, right: 40.r),
                                    child: Container(
                                      child: Text(userdata["password"]),
                                      width: 450.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12.sp)),
                                    ),
                                  ),
                                  Row(children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.w, top: 100.h),
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            "Accept",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.sp),
                                          ),
                                        ),
                                        width: 142.w,
                                        height: 50.h,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(5.r)),
                                      ),
                                    ),
                                    Row(children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 40.w, top: 100.h),
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                              "Reject",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18.sp),
                                            ),
                                          ),
                                          width: 142.w,
                                          height: 50.h,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(5.r)),
                                        ),
                                      ),
                                    ]),
                                  ]),
                                ],
                              ),
                              height: 800.h,
                              width: 355.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xffF0E4E4),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(
                                        0.2), // Shadow color with opacity
                                    spreadRadius:
                                        0, // How much the shadow spreads
                                    blurRadius: 4, // Softness of the shadow
                                    offset: Offset(
                                        0, 4), // X and Y offset of the shadow
                                  ),
                                ],
                              )),
                        )),
                  ]),
                ]),
              ]);
            }));
  }
}
