import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/Admin/admin_user.dart';

import 'Admin_doctor.dart';

class Admin_view_Doctor extends StatefulWidget {
  const Admin_view_Doctor({
    super.key,
    required this.id,
  });
  final id;

  @override
  State<Admin_view_Doctor> createState() => _Admin_view_DoctorState();
}

class _Admin_view_DoctorState extends State<Admin_view_Doctor> {
  Future<void> selectaccept() async {
    setState(() {
      FirebaseFirestore.instance
          .collection("Appoinment_details")
          .doc(widget.id)
          .update({"Status": 1});
    });
  }

  Future<void> selectreject() async {
    setState(() {
      FirebaseFirestore.instance
          .collection("Appoinment_details")
          .doc(widget.id)
          .update({"Status": 2});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Center(
          child: Text(
            "Doctors",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 20.sp),
          ),
        ),
      ),
      body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection("Doctor_signup")
              .doc(widget.id)
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
            final Doctordata = snapshot.data!.data() as Map<String, dynamic>;

            return ListView(children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 50.h),
                    child: Container(
                      child: Column(children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return AdminDoctor();
                                    },
                                  ));
                                },
                                icon: Icon(Icons.arrow_back_ios_new_sharp))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 20.w),
                                child: CircleAvatar(
                                  radius: 70.r,
                                  backgroundColor: Colors.brown[300],
                                  child: SvgPicture.string(
                                      "assets/Vector (2).svg"),
                                )),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 170.w, top: 2.h),
                                  child: Text(
                                    Doctordata["name"] ?? "no data found",
                                    style: GoogleFonts.poppins(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, left: 40.w),
                                  child: Text(
                                    "Username",
                                    style: GoogleFonts.rubik(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18.sp),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 45.w),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          Doctordata["name"] ?? "no data",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    height: 41.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, left: 40.w),
                                  child: Text(
                                    "Phone number",
                                    style: GoogleFonts.rubik(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18.sp),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 45.w),
                                  child: Container(
                                      child: Text(
                                        Doctordata["number"] ?? "no data",
                                        style: GoogleFonts.rubik(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.grey),
                                      ),
                                      height: 41.h,
                                      width: 300.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, left: 40.w),
                                  child: Text(
                                    "Qualification",
                                    style: GoogleFonts.rubik(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18.sp),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 45.w),
                                  child: Container(
                                    child: Text(
                                      Doctordata["qualification"] ?? "",
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    height: 41.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, left: 40.w),
                                  child: Text(
                                    "Work experience",
                                    style: GoogleFonts.rubik(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18.sp),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 45.w),
                                  child: Container(
                                    child: Text(
                                      Doctordata["experience"] ?? "",
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    height: 41.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, left: 40.w),
                                  child: Text(
                                    "Email",
                                    style: GoogleFonts.rubik(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18.sp),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 45.w),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          Doctordata["email"] ?? "",
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    height: 41.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.h, left: 40.w),
                                  child: Text(
                                    "Experience",
                                    style: GoogleFonts.rubik(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15.sp),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 45.w),
                                  child: Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            Doctordata["experience"] ?? "",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      height: 41.h,
                                      width: 300.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                )
                              ],
                            ),
                            Doctordata["Status"] == 0
                                ? Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 50.w, top: 100.h),
                                        child: GestureDetector(
                                          onTap: () {
                                            selectaccept();
                                          },
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                "Accept",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15.sp),
                                              ),
                                            ),
                                            height: 40.h,
                                            width: 110.w,
                                            decoration: BoxDecoration(
                                                color: Color(0xff49CD6E),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        14.r)),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.w, top: 100.h),
                                            child: GestureDetector(
                                              onTap: () {
                                                selectreject();
                                              },
                                              child: Container(
                                                child: Center(
                                                  child: Text(
                                                    "Reject",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 15.sp),
                                                  ),
                                                ),
                                                height: 40.h,
                                                width: 110.w,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffCD4949),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.r)),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                : Doctordata["Status"] == 1
                                    ? Container(
                                        child: Center(
                                          child: Text(
                                            "Accept",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15.sp),
                                          ),
                                        ),
                                        height: 40.h,
                                        width: 110.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff49CD6E),
                                            borderRadius:
                                                BorderRadius.circular(14.r)),
                                      )
                                    : Container(
                                        child: Center(
                                          child: Text(
                                            "Rejected",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15.sp),
                                          ),
                                        ),
                                        height: 40.h,
                                        width: 110.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xffCD4949),
                                            borderRadius:
                                                BorderRadius.circular(12.r)),
                                      ),
                          ],
                        ),
                      ]),
                      height: 940.h,
                      width: 370.w,
                      decoration: BoxDecoration(
                          color: Color(0xffF0E4E4),
                          borderRadius: BorderRadius.circular(10.sp)),
                    ),
                  )
                ],
              ),
            ]);
          }),
    );
  }
}
