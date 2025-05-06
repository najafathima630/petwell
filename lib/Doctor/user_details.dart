import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Doctor_view_user_details_page.dart';

class User_details extends StatefulWidget {
  const User_details({super.key});

  @override
  State<User_details> createState() => _User_detailsState();
}

class _User_detailsState extends State<User_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("user_signup")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (!snapshot.hasData) {
                    return Center(child: Text("no data found"));
                  }
                  var userdetails = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: userdetails.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 30.w, right: 30.w),
                        child: Card(
                          elevation: 3,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return DoctorViewUserDetailsPage(
                                      id: userdetails[index].id,
                                      name: userdetails[index]["name"] ?? "",
                                      number: userdetails[index]["number"] ?? "",
                                      email: userdetails[index]["email"] ?? "",
                                  place:userdetails[index]["place"]??"");
                                },
                              ));
                            },
                            child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: Color(0xffCF6A6AF0E4E4),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 1.sp)),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50.w,
                                    width: 50.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey[400],
                                    ),
                                    child: Icon(Icons.person,
                                        size: 40.sp, color: Colors.white),
                                  ),
                                  SizedBox(width: 16.w),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            userdetails[index]["name"] ??
                                                "no data found",
                                            style: GoogleFonts.inter(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600)),
                                        Text(
                                            userdetails[index]["email"] ??
                                                "no data found",
                                            style: GoogleFonts.inter(
                                                fontSize: 14.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600)),
                                        Text(
                                          userdetails[index]["place"] ??
                                              "no data found",
                                          style: GoogleFonts.inter(
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                            userdetails[index]["number"] ??
                                                "no data found",
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
                        ),
                      );
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
