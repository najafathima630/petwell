import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/Doctor/Tabbar.dart';

class ViewAppoinment extends StatefulWidget {
  const ViewAppoinment(
      {super.key,
      required this.id,
      required this.name,
      required this.owner_name,
      required this.pet_type,
      required this.gender,
      });
  final id;
  final name;
  final owner_name;
  final pet_type;
  final gender;


  @override
  State<ViewAppoinment> createState() => _ViewAppoinmentState();
}

class _ViewAppoinmentState extends State<ViewAppoinment> {
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
    return FutureBuilder(
        future: FirebaseFirestore.instance
            .collection("Appoinment_details")
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
          final appoinment_detail =
              snapshot.data!.data() as Map<String, dynamic>;
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
                      padding: EdgeInsets.only(left: 20.w, top: 100.h),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.w, top: 30.h),
                                  child: Text(
                                    "Username:",
                                    style: GoogleFonts.poppins(
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.w, top: 30.h),
                                  child: Text(
                                    "${widget.owner_name}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w700),
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
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.w, top: 30.h),
                                child: Text(
                                  "${widget.name}",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ]),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                                child: Text(
                                  "Pet type:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.w, top: 30.h),
                                child: Text(
                                  "${widget.pet_type}",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ]),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                                child: Text(
                                  "Gender:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                                child: Text(
                                  "${widget.gender}",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ]),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                                child: Text(
                                  "Vaccination:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.w, top: 30.h),
                                child: Text(
                                  "FVRCP",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ]),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                                child: Text(
                                  "Dose:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.w, top: 30.h),
                                child: Text(
                                  "Seconddose",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ]),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 30.h),
                                child: Text(
                                  "Weight:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.w, top: 30.h),
                                child: Text(
                                  "10kg",
                                  style: GoogleFonts.poppins(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ]),
                            appoinment_detail["Status"] == 0
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
                                : appoinment_detail["Status"] == 1
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
                        width: 373.w,
                        height: 600.h,
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
        });
  }
}
