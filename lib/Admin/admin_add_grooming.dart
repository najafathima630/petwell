import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_dashboard.dart';

class AdminAddGrooming extends StatefulWidget {
  const AdminAddGrooming({super.key});

  @override
  State<AdminAddGrooming> createState() => _AdminAddGroomingState();
}

class _AdminAddGroomingState extends State<AdminAddGrooming> {
  final form_key = GlobalKey<FormState>();
  TextEditingController packagectrl = TextEditingController();
  TextEditingController servicectrl = TextEditingController();
  TextEditingController service1ctrl = TextEditingController();
  TextEditingController service2ctrl = TextEditingController();
  TextEditingController service3ctrl = TextEditingController();
  TextEditingController service4ctrl = TextEditingController();
  TextEditingController service5ctrl = TextEditingController();
  TextEditingController service6ctrl = TextEditingController();
  TextEditingController service7ctrl = TextEditingController();
  TextEditingController service8ctrl = TextEditingController();

  Future<void> user() async {
    FirebaseFirestore.instance.collection("Add_Grooming").add({
      "package": packagectrl.text,
      "service": servicectrl.text,
      "service1": service1ctrl.text,
      "service2": service2ctrl.text,
      "service3": service3ctrl.text,
      "service4": service4ctrl.text,
      "service5": service5ctrl.text,
      "service6": service6ctrl.text,
      "service7": service7ctrl.text,
      "service8": service8ctrl.text,
      "Status": 0,
      "profile_path":
      "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    });
    print("Success");
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return UserDetails();
      },
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Service",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Color(0xff5CB15A),
      ),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 348.w,
                  height: 790.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffE4DADA),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                        EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(controller: packagectrl,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "Package name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.sp))),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(controller: servicectrl,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "service name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(controller:service1ctrl ,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "service name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(controller: service2ctrl,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "service name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(controller: service3ctrl,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "service name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(controller: service4ctrl,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "service name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(controller: service5ctrl,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "service name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(controller: service6ctrl,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "service name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(controller: service7ctrl,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "service name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ), Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 80.w, top: 30.h),
                            child: InkWell(
                              onTap: () {
                                user();
                              },
                              child: Container(
                                child: Center(
                                    child: Text(
                                      "ADD",
                                      style: GoogleFonts.hind(fontSize: 16.sp),
                                    )),
                                width: 166.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    color: Color(0xff5CB15A),
                                    borderRadius:
                                    BorderRadius.circular(10.r)),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ]),
    );
  }
}