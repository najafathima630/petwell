import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/Admin/admin_login.dart';

import 'Admin_doctor.dart';
import 'admin_add_grooming.dart';
import 'admin_notification.dart';
import 'admin_user.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Padding(
          padding: EdgeInsets.only(left: 70.h),
          child: Text(
            "DashBoard",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 20.sp),
          ),
        ),leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AdminLogin();
          },));
        }, icon: Icon(Icons.arrow_back_ios_new)),

      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 70.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return AdminUser();
                      },
                    ));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40.h, left: 70.w),
                              child: Text(
                                "40",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 40.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 50.w),
                              child: Text(
                                "Users",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.sp),
                        border: Border.all(width: 1.sp, color: Colors.black)),
                    height: 150.h,
                    width: 180.w,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 70.h),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return AdminDoctor();
                          },
                        ));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 40.h, left: 70.w),
                                  child: Text(
                                    "20",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 40.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Doctors",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1, color: Colors.black)),
                        height: 150.h,
                        width: 180.w,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return AdminAddGrooming();
                      },
                    ));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 70.w),
                              child: Text(
                                "4",
                                style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Text(
                                "Grooming",
                                style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.black)),
                    height: 150.h,
                    width: 180.w,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 30.h),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return AdminAddGrooming();
                          },
                        ));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 20.h, left: 70.w),
                                  child: Text(
                                    "6",
                                    style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 50.w),
                                  child: Text(
                                    "Food",
                                    style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1, color: Colors.black)),
                        height: 150.h,
                        width: 180.w,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 20.h),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return AdminNotification();
                      },
                    ));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 70.w),
                              child: Text(
                                "10",
                                style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 40.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Text(
                                "Notifications",
                                style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.black)),
                    height: 150.h,
                    width: 180.w,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 20.h),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 30.h, left: 70.w),
                                  child: Icon(
                                    Icons.logout,
                                    size: 40.sp,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  "LOg out",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1, color: Colors.black)),
                      height: 150.h,
                      width: 180.w,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
