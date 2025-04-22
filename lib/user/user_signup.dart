import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/user/user_login.dart';

import '../firebase_options.dart';
import '../main.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // only needed if using Firebase CLI setup
  );
  runApp(MyApp());
}
class user_signup extends StatefulWidget {
  const user_signup({super.key});


  @override
  State<user_signup> createState() => _user_signupState();
}

class _user_signupState extends State<user_signup> {

  final form_key = GlobalKey<FormState>();
  TextEditingController namectrl = TextEditingController();
  TextEditingController numberctrl = TextEditingController();
  TextEditingController emailctrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();
  TextEditingController placectrl = TextEditingController();
  Future<void> users() async {
    if (!form_key.currentState!.validate()) {
      return;
    }

    FirebaseFirestore.instance.collection("user_signup").add({
      "name": namectrl.text,
      "number": numberctrl.text,
      "email": emailctrl.text,
      "password": passwordctrl.text,
      "place": placectrl.text,
      "Status": 0,
      "Profile_path":
          "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    });

    print("Success");
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return LoginPage();
      },
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xffFFFFFF),
            leading: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
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
                  style: GoogleFonts.hind(fontSize: 36),
                )),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Text(
                        "Create an account to get all features",
                        style: GoogleFonts.hind(
                            fontSize: 14, color: Color(0xff999999)),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 10),
                  child: Container(
                    child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Name",
                                  style: GoogleFonts.rubik(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Center(
                                child: Padding(
                              padding:
                                  EdgeInsets.only(top: 10, left: 10, right: 10),
                              child: TextFormField(
                                  controller: namectrl,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Empty name";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your username',
                                      hintStyle: GoogleFonts.hind(
                                          fontSize: 14, color: Colors.grey),
                                      prefixIcon: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Icon(
                                            Icons.person,
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
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Email",
                                  style: GoogleFonts.rubik(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Center(
                                child: Padding(
                              padding:
                                  EdgeInsets.only(top: 10, left: 10, right: 10),
                              child: TextFormField(
                                  controller: emailctrl,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Empty mail";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your email',
                                      hintStyle: GoogleFonts.hind(
                                          fontSize: 14, color: Colors.grey),
                                      prefixIcon: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Icon(
                                            Icons.mail,
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
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Number",
                                  style: GoogleFonts.rubik(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Center(
                                child: Padding(
                              padding:
                                  EdgeInsets.only(top: 10, left: 10, right: 10),
                              child: TextFormField(
                                  controller: numberctrl,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Empty number";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your number',
                                      hintStyle: GoogleFonts.hind(
                                          fontSize: 14, color: Colors.grey),
                                      prefixIcon: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Icon(
                                            Icons.call,
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
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Location",
                                  style: GoogleFonts.rubik(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Center(
                                child: Padding(
                              padding:
                                  EdgeInsets.only(top: 10, left: 10, right: 10),
                              child: TextFormField(
                                  controller: placectrl,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Empty location";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your location',
                                      hintStyle: GoogleFonts.hind(
                                          fontSize: 14, color: Colors.grey),
                                      prefixIcon: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Icon(
                                            Icons.location_on,
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
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Password",
                                  style: GoogleFonts.rubik(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Center(
                                child: Padding(
                              padding:
                                  EdgeInsets.only(top: 10, left: 10, right: 10),
                              child: TextFormField(
                                  controller: passwordctrl,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Empty password";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                      hintStyle: GoogleFonts.hind(
                                          fontSize: 14, color: Colors.grey),
                                      prefixIcon: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Icon(
                                            Icons.lock,
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
                                  padding: EdgeInsets.only(left: 80, top: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (form_key.currentState!.validate()) {
                                        users();
                                      }
                                    },
                                    child: Container(
                                      child: Center(
                                          child: Text(
                                        "REGISTER",
                                        style: GoogleFonts.hind(fontSize: 16),
                                      )),
                                      width: 166,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Color(0xff5CB15A),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        height: 500,
                        width: 325,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF0E4E4),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.2), // Shadow color with opacity
                              spreadRadius: 0, // How much the shadow spreads
                              blurRadius: 4, // Softness of the shadow
                              offset:
                                  Offset(0, 4), // X and Y offset of the shadow
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Text(
                        "Already have an account? ",
                        style: GoogleFonts.rubik(
                            fontSize: 16, color: Colors.black),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ));
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.inter(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ]),
        ));
  }
}
