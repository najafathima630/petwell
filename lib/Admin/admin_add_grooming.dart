import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminAddGrooming extends StatefulWidget {
  const AdminAddGrooming({super.key});

  @override
  State<AdminAddGrooming> createState() => _AdminAddGroomingState();
}

class _AdminAddGroomingState extends State<AdminAddGrooming> {
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
                        child: TextFormField(
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
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "Select name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "Select name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(
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
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "Select name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "Select name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "Select name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "Select name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIconColor: Colors.white,
                              suffixIconColor: Colors.white,
                              fillColor: Colors.white,
                              hintText: "Select name",
                              filled: true,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1))),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50.w,
                            height: 100.h,
                            decoration: BoxDecoration(color: Colors.green),
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
