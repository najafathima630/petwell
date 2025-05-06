import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserGrooming extends StatefulWidget {
  const UserGrooming({super.key});

  @override
  State<UserGrooming> createState() => _UserGroomingState();
}

class _UserGroomingState extends State<UserGrooming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Center(child: Text("Providing Services")),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("Add_Grooming")
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return Center(child: Text("no data found"));
                }
                var gromming = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: gromming.length,
                  itemBuilder: (context, index) {
                    return Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.w, top: 30.h),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 90.w),
                                        child:
                                        Text(gromming[index]["package"],
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.indigo),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.w, top: 10.h),
                                        child:  Text(gromming[index]["service"],
                                        )
                                    )  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child:Text(gromming[index]["service1"],)
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 30.w),
                                          child: Container(
                                            child: Center(
                                              child: Text(
                                                "select package",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(15.r),
                                                color: Color(0xffCD4949)),
                                            width: 150.w,
                                            height: 25.h,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child:  Text(gromming[index]["service2"],
                                        )
                                    )],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Text(gromming[index]["service3"],
                                        )
                                    )],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child: Text(gromming[index]["service4"],
                                        )
                                    ) ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child:  Text(gromming[index]["service5"],
                                        ))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.w),
                                        child:  Text(gromming[index]["service6"],
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            height: 250.h,
                            width: 350.w,
                          ),
                        ),
                      )
                    ]);
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
