import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/Doctor/Doctor_login_page.dart';

import '../user/user_login.dart';

class DoctorSignupPage extends StatefulWidget {
  const DoctorSignupPage({super.key});

  @override
  State<DoctorSignupPage> createState() => _DoctorSignupPageState();
}

class _DoctorSignupPageState extends State<DoctorSignupPage> {
  final form_key = GlobalKey<FormState>();
  TextEditingController namectrl = TextEditingController();
  TextEditingController numberctrl = TextEditingController();
  TextEditingController emailctrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();
  TextEditingController experiencectrl = TextEditingController();
  TextEditingController Qualificationctrl = TextEditingController();
  Future<void> Doctor() async {
    if (!form_key.currentState!.validate()) {
      return;
    }

    FirebaseFirestore.instance.collection("Doctor_signup").add({
      "name": namectrl.text.trim(),
      "number": numberctrl.text.trim(),
      "email": emailctrl.text.trim(),
      "password": passwordctrl.text.trim(),
      "experience": experiencectrl.text.trim(),
      "qualification":Qualificationctrl.text.trim(),
      "Status": 0,
      "Profile_path":
      "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    });

    print("Success");
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return DoctorLoginPage();
      },
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return DoctorLoginPage();
                    },
                  ));
                },
                icon: Icon(Icons.arrow_back_ios_new))),
        backgroundColor: Color(0xffFFFFFF),
        body: Form(
          key: form_key,
          child: ListView(children: [
            Column(
              children: [
                Center(
                    child: Text(
                  "Sign up",
                  style: GoogleFonts.hind(fontSize: 36.sp),
                )),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 80.w),
                      child: Text(
                        "Create an account to get all features",
                        style: GoogleFonts.hind(
                            fontSize: 14.sp, color: Color(0xff999999)),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.h, left: 10.w),
                  child: Container(
                    child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "user name",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Center(
                                child: Padding(
                              padding: EdgeInsets.only(left: 10.w, right: 10.r),
                              child: TextFormField(controller:namectrl ,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Empty name";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your username',
                                      hintStyle: GoogleFonts.hind(
                                          fontSize: 14.sp, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.w),
                                      ))),
                            )),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "Contact number",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Center(
                                child: Padding(
                              padding: EdgeInsets.only(
                                  top: 10.h, left: 10.w, right: 10.r),
                              child: TextFormField(controller: numberctrl,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Empty number";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your number',
                                      hintStyle: GoogleFonts.hind(
                                          fontSize: 14.sp, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.w),
                                      ))),
                            )),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "Email",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Center(
                                child: Padding(
                              padding: EdgeInsets.only(
                                  top: 10.h, left: 10.w, right: 10.r),
                              child: TextFormField(controller: emailctrl,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Empty email";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your email',
                                      hintStyle: GoogleFonts.hind(
                                          fontSize: 14.sp, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.w),
                                      ))),
                            )),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "Qualification",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Center(
                                child: Padding(
                              padding: EdgeInsets.only(
                                  top: 10.h, left: 10.w, right: 10.r),
                              child: TextFormField(controller: Qualificationctrl,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Empty qualification";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your qualification',
                                      hintStyle: GoogleFonts.hind(
                                          fontSize: 14.sp, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.w),
                                      ))),
                            )),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "Password",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Center(
                                child: Padding(
                              padding: EdgeInsets.only(
                                  top: 10.h, left: 10.w, right: 10.r),
                              child: TextFormField(controller: passwordctrl,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Empty password";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                      hintStyle: GoogleFonts.hind(
                                          fontSize: 14.sp, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.w),
                                      ))),
                            )),    Row(
                              children: [
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "Experience",
                                  style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 10.h, left: 10.w, right: 10.r),
                                  child: TextFormField(controller: experiencectrl,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Empty experience";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          hintText: 'Enter your experience',
                                          hintStyle: GoogleFonts.hind(
                                              fontSize: 14.sp, color: Colors.grey),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(12.r),
                                            borderSide:
                                            BorderSide(color: Colors.black),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(12.r),
                                            borderSide:
                                            BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(12.r),
                                            borderSide: BorderSide(
                                                color: Colors.black, width: 2.w),
                                          ))),
                                )),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 90.w, top: 10.h),
                                  child: InkWell(
                                    onTap: () {
                                      if (form_key.currentState!.validate())
                                      Doctor();
                                    },
                                    child: Container(
                                      child: Center(
                                          child: Text(
                                        "REGISTER",
                                        style:
                                            GoogleFonts.hind(fontSize: 16.sp),
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
                        height: 680.h,
                        width: 348.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xffF0E4E4),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.2), // Shadow color with opacity
                              spreadRadius: 0.r, // How much the shadow spreads
                              blurRadius: 4.r, // Softness of the shadow
                              offset:
                                  Offset(0, 4), // X and Y offset of the shadow
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 70.w),
                      child: Text(
                        "Already have an account? ",
                        style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      "Login",
                      style: GoogleFonts.poppins(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ]),
        ));
  }
}
