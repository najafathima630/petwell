import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/user/user_homa_page.dart';
import 'package:petwell_project/user/user_signup.dart';

import 'Navigation_user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final form_key = GlobalKey<FormState>();
  var passowrdctrl = TextEditingController();
  var Emailctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: ListView(children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 170.h, left: 40.w),
                  child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 110.w),
                                  child: Text(
                                    "Login",
                                    style: GoogleFonts.inter(fontSize: 36.sp),
                                  ))
                            ],
                          ),
                          Center(
                              child: Padding(
                            padding: EdgeInsets.only(
                                top: 70.h, left: 10.w, right: 10.r),
                            child: TextFormField(
                                controller: Emailctrl,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Empty password";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    hintText: 'Enter your email',
                                    hintStyle: GoogleFonts.hind(
                                        fontSize: 14.sp, color: Colors.grey),
                                    prefixIcon: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Icon(
                                          Icons.alternate_email_outlined,
                                          color: Colors.black,
                                        )),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2),
                                    ))),
                          )),
                          Center(
                              child: Padding(
                            padding: EdgeInsets.only(
                                top: 70.h, left: 10.w, right: 10.r),
                            child: TextFormField(
                                controller: passowrdctrl,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Empty password";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    hintText: '***************',
                                    hintStyle: GoogleFonts.hind(
                                        fontSize: 14.sp, color: Colors.grey),
                                    prefixIcon: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Icon(
                                          Icons.wifi_password_rounded,
                                          color: Colors.black,
                                        )),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2),
                                    ))),
                          )),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 80.w, top: 50.h),
                                child: InkWell(
                                  onTap: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                                     return NavigationBarMechanic();
                                   },));
                                  },
                                  child: Container(
                                    child: Center(
                                        child: Text(
                                      "LOGIN",
                                      style: GoogleFonts.hind(fontSize: 16.sp),
                                    )),
                                    width: 166.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        color: Color(0xff5CB15A),
                                        borderRadius:
                                            BorderRadius.circular(10.sp)),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            "Forget password",
                            style: GoogleFonts.hind(),
                          )
                        ],
                      ),
                      height: 501.h,
                      width: 339.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: Color(0xffF1DCDC),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(
                                0.2.sp), // Shadow color with opacity
                            spreadRadius: 0.r, // How much the shadow spreads
                            blurRadius: 4.r, // Softness of the shadow
                            offset:
                                Offset(0, 4), // X and Y offset of the shadow
                          ),
                        ],
                      )),
                )
              ],
            ),
            SizedBox(
              height: 170.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 90.w),
                  child: Text(
                    "Do you have account?",
                    style:
                        GoogleFonts.hind(fontSize: 18.sp, color: Colors.black),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return user_signup();
                        },
                      ));
                    },
                    child: Text(
                      "Sign up",
                      style:
                          GoogleFonts.inter(color: Colors.green, fontSize: 16),
                    ))
              ],
            )
          ]),
        ));
  }
}
