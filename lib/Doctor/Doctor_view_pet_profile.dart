import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Tabbar.dart';

class DoctorViewPetProfile extends StatefulWidget {
  const DoctorViewPetProfile({super.key});

  @override
  State<DoctorViewPetProfile> createState() => _DoctorViewPetProfileState();
}

class _DoctorViewPetProfileState extends State<DoctorViewPetProfile> {
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
            padding: EdgeInsets.only(left: 60),
            child: Text("Pet Profile", style: TextStyle(color: Colors.black)),
          ),
        ),
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("pets_details")
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (!snapshot.hasData) {
                return Center(child: Text("no data found"));
              }
              var pet_data = snapshot.data!.docs;
              return ListView.builder(
                  itemCount: pet_data.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20.h, left: 30.w),
                          child: Card(
                            elevation: 3,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 120.w, top: 10.h),
                                        child: CircleAvatar(
                                          radius: 40.r,
                                        ),
                                      )
                                    ],
                                  ),
                                  // Row(
                                  //   children: [
                                  //     Center(
                                  //         child: Padding(
                                  //             padding: EdgeInsets.only(left: 130.w),
                                  //             child: Text(
                                  //               pet_data[index]["Name"] ??
                                  //                   "no data found",
                                  //             )))
                                  //   ],
                                  // ),

                                  Row(children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.w, top: 10.h),
                                      child: Text(
                                        "Colour:",
                                        style: GoogleFonts.poppins(
                                            fontSize: 19.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 50.w, top: 10.h),
                                      child: Text(
                                        pet_data[index]["color"] ??
                                            "no data found",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ]),
                                  Row(children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.w, top: 10.h),
                                      child: Text(
                                        "Gender:",
                                        style: GoogleFonts.poppins(
                                            fontSize: 19.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 50.w, top: 10.h),
                                      child: Text(
                                        pet_data[index]["gender"] ??
                                            "no data found",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ]),
                                  Row(children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.w, top: 10.h),
                                      child: Text(
                                        "Weight:",
                                        style: GoogleFonts.poppins(
                                            fontSize: 19.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 50.w, top: 10.h),
                                      child: Text(
                                        pet_data[index]["weight"] ??
                                            "no data found",
                                        style: GoogleFonts.poppins(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                              height: 300.h,
                              width: 350.w,
                            ),
                          ),
                        ),
                      ],
                    );
                  });
            }));
  }
}
