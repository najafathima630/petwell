import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/Admin/admin_user.dart';

class Admin_view_Doctor extends StatefulWidget {
  const Admin_view_Doctor({super.key, required this.id});
  final id;
  @override
  State<Admin_view_Doctor> createState() => _Admin_view_DoctorState();
}

class _Admin_view_DoctorState extends State<Admin_view_Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Padding(
          padding: EdgeInsets.only(left: 150.w),
          child: Text(
            "Doctors",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 20.sp),
          ),
        ),
      ),
      body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection("user_register")
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
                                      return AdminUser();
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
                                  backgroundColor: Color(0xff78573F),
                                )),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 160.w, top: 2.h),
                                  child: Text(
                                    Doctordata["name"]??"no data found",
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
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
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
                                          Doctordata["name"]??"no data",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    height: 50.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: Border.all(width: 1)),
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
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
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
                                          Doctordata["number"]??"no data",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    height: 50.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: Border.all(width: 1)),
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
                                    "email address",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
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
                                          "Email",
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    height: 50.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: Border.all(width: 1)),
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
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
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
                                          "experience",
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    height: 50.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: Border.all(width: 1)),
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
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
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
                                          "example@gmail.com",
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    height: 50.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: Border.all(width: 1)),
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
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
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
                                          "Enter your experience",
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    height: 50.h,
                                    width: 300.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: Border.all(width: 1)),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 30.w, top: 30.h),
                                  child: Container(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 5.h, left: 20.w),
                                      child: Center(
                                        child: Text(
                                          "Accept",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.sp),
                                        ),
                                      ),
                                    ),
                                    height: 42.h,
                                    width: 142.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        color: Colors.lightGreen),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 30.w, top: 30.h),
                                  child: Container(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 5.h, left: 20.w),
                                      child: Center(
                                        child: Text(
                                          "Reject",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.sp),
                                        ),
                                      ),
                                    ),
                                    height: 42.h,
                                    width: 142.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        color: Colors.red),
                                  ),
                                )
                              ],
                            )
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
