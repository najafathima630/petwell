import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Expanded(
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("admin_notification")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (!snapshot.hasData) {
                      return Center(child: Text("no data found"));
                    }
                    var admin = snapshot.data!.docs;
                          return ListView.builder(
                            itemCount: admin.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: Container(
                                  height: 200.h,
                                  width: 200.w,
                                  child: Card(
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: ListTile(
                                      title: Text(
                                       admin[index][ "Heading"],
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: 1.h),
                                        child: Text(
                                         admin[index] ["Time"],
                                          style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                      ),
                                      trailing: Text(
                                        admin[index]["Date"],
                                        style: GoogleFonts.poppins(
                                          fontSize: 14.sp,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }
                  ),
            )));
  }
}
