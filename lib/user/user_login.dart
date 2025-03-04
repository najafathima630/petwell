import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff5CB15A),
        body: Container(
          child: Column(children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 170, left: 20),
                  child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 110),
                                  child: Text(
                                    "Login",
                                    style: GoogleFonts.inter(fontSize: 36),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30, top: 70),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Icon(
                                          Icons.email,
                                          size: 20,
                                        ),
                                      ),
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
                                padding: EdgeInsets.only(left: 30, top: 50),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Icon(
                                          Icons.password,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 30),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Password",
                                              style: GoogleFonts.inter(
                                                  fontSize: 12),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 110),
                                                  child: Icon(
                                                    Icons.remove_red_eye,
                                                    size: 20,
                                                    shadows: [
                                                      Shadow(blurRadius: 6)
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
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
                                padding: EdgeInsets.only(left: 80, top: 50),
                                child: Container(
                                  child: Center(
                                      child: Text(
                                        "LOGIN",
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
                      height: 400,
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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 60, top: 20),
                  child: Text(
                    "Don’t have an account?",
                    style: GoogleFonts.inter(fontSize: 20),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 130, top: 20),
                    child: Text(
                      "REGISTER",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        color: Color(0xffFA6A6A),
                      ),
                    ))
              ],
            )
          ]),
        ));
  }
}
