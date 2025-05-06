import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/Doctor/Doctor_signup_page.dart';
import 'package:petwell_project/Doctor/user_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Tabbar.dart';

class DoctorLoginPage extends StatefulWidget {
  const DoctorLoginPage({super.key});

  @override
  State<DoctorLoginPage> createState() => _DoctorLoginPageState();
}

class _DoctorLoginPageState extends State<DoctorLoginPage> {
  final form_key = GlobalKey<FormState>();
  var passowrdctrl = TextEditingController();
  var emailctrl = TextEditingController();
  String id = "";
  Future<void> Doctor_Login() async {
    final user = await FirebaseFirestore.instance
        .collection("Doctor_signup")
        .where("email", isEqualTo: emailctrl.text)
        .where("password", isEqualTo: passowrdctrl.text)
        .get();

    if (user.docs.isNotEmpty) {
      id = user.docs[0].id;
      print("$id");
      SharedPreferences userdata = await SharedPreferences.getInstance();
      userdata.setString("doctor_id", id);
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return DoctorTapbar();
        },
      ));
      print("done");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("invalid mail or password"),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void registerDoctor() async {
    if (form_key.currentState!.validate()) {
      try {
        UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailctrl.text,
          password: passowrdctrl.text,
        );

        if (userCredential.user != null) {
          // ✅ Get user's Firestore document
          final snapshot = await FirebaseFirestore.instance
              .collection("Doctor_signup")
              .where("email", isEqualTo: emailctrl.text)
              .get();

          if (snapshot.docs.isNotEmpty) {
            String Doctor_id = snapshot.docs[0].id;
            SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setString("doctor_id",Doctor_id ); // ✅ Save Firestore ID

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => DoctorTapbar()),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("User record not found in Firestore")),
            );
          }
        }
      } catch (e) {
        print("Login Error: $e");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Error: $e"),
            backgroundColor: Colors.black,
          ),
        );
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: form_key,
          child: Container(
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
                                  controller: emailctrl,
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
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: SvgPicture.asset(
                                          'assets/entypo_email (1).svg', // ✅ Ensure this file exists
                                          height: 20.h,
                                          width: 20.w,
                                          color: Colors.black,
                                        ),
                                      ),
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
                                        child: SvgPicture.asset(
                                          'assets/ic_twotone-wifi-password.svg', // ✅ Ensure this file exists
                                          height: 20.h,
                                          width: 20.w,
                                          color: Colors.black,
                                        ),
                                      ),
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
                                  padding:
                                      EdgeInsets.only(left: 80.w, top: 50.h),
                                  child: InkWell(
                                    onTap: () {
                                      if (form_key.currentState!.validate())
                                        registerDoctor();
                                    },
                                    child: Container(
                                      child: Center(
                                          child: Text(
                                        "LOGIN",
                                        style:
                                            GoogleFonts.hind(fontSize: 16.sp),
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
                      style: GoogleFonts.hind(
                          fontSize: 18.sp, color: Colors.black),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return DoctorSignupPage();
                          },
                        ));
                      },
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.inter(
                            color: Colors.green, fontSize: 16),
                      ))
                ],
              )
            ]),
          ),
        ));
  }
}
