import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/Doctor/Tabbar.dart';

import 'Add_vaccination.dart';

class ViewAppoinment extends StatefulWidget {
  const ViewAppoinment({super.key});

  @override
  State<ViewAppoinment> createState() => _ViewAppoinmentState();
}

class _ViewAppoinmentState extends State<ViewAppoinment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DoctorTapbar();
          },));
        }, icon: Icon(Icons.arrow_back_ios_new))
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 100.h),
                child: Container(
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "Username:",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "name",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "Petname:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Text(
                          "luna",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "Pet type:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Text(
                          "persian",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "Gender:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "male",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "Vaccination:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 30.h),
                        child: Text(
                          "FVRCP",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "Dose:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Text(
                          "Seconddose",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 30.h),
                        child: Text(
                          "Weight:",
                          style: GoogleFonts.poppins(
                              fontSize: 19.sp, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Text(
                          "10kg",
                          style: GoogleFonts.poppins(
                              fontSize: 17.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 50.w),
                          child: Container(
                            child: Center(
                              child: Text(
                                "Reject",
                                style: GoogleFonts.rubik(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                            ),
                            width: 130.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 30.w),
                          child: Container(
                            child: Center(
                              child: Text(
                                "Accept",
                                style: GoogleFonts.rubik(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                            ),
                            width: 130.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green),
                          ),
                        )
                      ],
                    )
                  ]),
                  width: 373.w,
                  height: 499.h,
                  decoration: BoxDecoration(
                      color: Color(0xffCFE2FF),
                      borderRadius: BorderRadius.circular(20.r)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
