import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Tabbar.dart';

class DoctorViewUserDetailsPage extends StatefulWidget {
  const DoctorViewUserDetailsPage(
      {super.key,
      required,
      required this.id,
      required this.name,
      required this.number,
      required this.email,
      required this.place});
  final id;
  final name;
  final number;
  final email;
  final place;
  @override
  State<DoctorViewUserDetailsPage> createState() =>
      _DoctorViewUserDetailsPageState();
}

class _DoctorViewUserDetailsPageState extends State<DoctorViewUserDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff5CB15A),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DoctorTapbar();
                  },
                ));
              },
              icon: Icon(Icons.arrow_back_ios_new))),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 50.h),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 130.w),
                            child: CircleAvatar(
                              radius: 50.r,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Text(
                              "Name:",
                              style: GoogleFonts.poppins(
                                  fontSize: 19.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 30.h),
                            child: Text(
                              "${widget.name}",
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
                            "number:",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "${widget.number}",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "Email:",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "${widget.email}",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "Place:",
                            style: GoogleFonts.poppins(
                                fontSize: 19.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 30.h),
                          child: Text(
                            "${widget.place}",
                            style: GoogleFonts.poppins(
                                fontSize: 17.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ],
                  ),
                  width: 373.w,
                  height: 499.h,
                  decoration: BoxDecoration(
                      color: Colors.green[100],
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
