import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class user_signup extends StatefulWidget {
  const user_signup({super.key});

  @override
  State<user_signup> createState() => _user_signupState();
}

class _user_signupState extends State<user_signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Color(0xffFFFFFF),
        body: Container(
          child: Column(children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 80, left: 20),
                  child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 100),
                                  child: Text(
                                    "Sign up",
                                    style: GoogleFonts.inter(fontSize: 36),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30, top: 20),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Username",
                                              style: GoogleFonts.inter(
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  width: 269,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff5CB15A),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30, top: 10),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Email",
                                              style: GoogleFonts.inter(
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  width: 269,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff5CB15A),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30, top: 10),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Password",
                                              style: GoogleFonts.inter(
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  width: 269,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff5CB15A),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30, top: 10),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Contact number",
                                              style: GoogleFonts.inter(
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  width: 269,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff5CB15A),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30, top: 10),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Place",
                                              style: GoogleFonts.inter(
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  width: 269,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff5CB15A),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 80, top: 30),
                                child: Container(
                                  child: Center(
                                      child: Text(
                                        "REGISTER",
                                        style: GoogleFonts.inter(fontSize: 16),
                                      )),
                                  width: 166,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xff5CB15A),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      height: 450,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF0E4E4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.2), // Shadow color with opacity
                            spreadRadius: 0, // How much the shadow spreads
                            blurRadius: 4, // Softness of the shadow
                            offset:
                            Offset(0, 4), // X and Y offset of the shadow
                          ),
                        ],
                      )),
                )
              ],
            ),
          ]),
        ));
  }
}
