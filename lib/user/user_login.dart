import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/user/user_homa_page.dart';
import 'package:petwell_project/user/user_signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Navigation_user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final form_key = GlobalKey<FormState>();
  var passowrdctrl = TextEditingController();
  var emailctrl = TextEditingController();
  // String id = "";
  // Future<void> User_login() async {
  //   final user = await FirebaseFirestore.instance
  //       .collection("user_signup")
  //       .where("email", isEqualTo: Emailctrl.text)
  //       .where("password", isEqualTo: passowrdctrl.text)
  //       .get();
  //
  //   if (user.docs.isNotEmpty) {
  //     id = user.docs[0].id;
  //     print("$id");
  //     SharedPreferences userdata = await SharedPreferences.getInstance();
  //     userdata.setString("Userid", id);
  //     Navigator.push(context, MaterialPageRoute(
  //       builder: (context) {
  //         return NavigationBarMechanic();
  //       },
  //     ));
  //     print("done");
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text("invalid mail or password"),
  //         backgroundColor: Colors.black,
  //       ),
  //     );
  //   }
  // }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void loginUser() async {
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
              .collection("user_signup")
              .where("email", isEqualTo: emailctrl.text)
              .get();

          if (snapshot.docs.isNotEmpty) {
            String userId = snapshot.docs[0].id;
            SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setString("Userid", userId); // ✅ Save Firestore ID

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => NavigationBarMechanic()),
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
                      height: 540.h,
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
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 70.w),
                                  child: Text(
                                    " User Login",
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
                                padding: EdgeInsets.only(left: 80.w, top: 50.h),
                                child: InkWell(
                                  onTap: () {
                                    if (form_key.currentState!.validate()) {
                                      print("Done");
                                      loginUser();
                                    }
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
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 110.w, top: 10.h),
                                    child: InkWell(
                                      onTap: () {
                                        loginUser();
                                      },
                                      child: CircleAvatar(
                                        radius: 30.r,
                                        backgroundImage: AssetImage(
                                            "assets/download (1).png"),
                                      ),
                                    ),
                                  )
                                ],
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
                    ),
                  ),
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
                            return user_signup();
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
