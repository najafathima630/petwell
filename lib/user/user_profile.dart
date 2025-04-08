import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class User_profile extends StatefulWidget {
  const User_profile({super.key});

  @override
  State<User_profile> createState() => _User_profileState();
}

class _User_profileState extends State<User_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Padding(
          padding: EdgeInsets.only(left: 70),
          child: Text(
            "User Profile",
            style: GoogleFonts.hind(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100, top: 30),
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 90,
                    color: Colors.grey,
                  ),
                  radius: 70,
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 150,
              ),
              Text(
                "Name",
                style: GoogleFonts.hind(fontSize: 16),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Username",
                      style:
                      GoogleFonts.hind(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  width: 320,
                  height: 56,
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
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Number",
                      style:
                      GoogleFonts.hind(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  width: 320,
                  height: 56,
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
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Email",
                      style:
                      GoogleFonts.hind(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  width: 320,
                  height: 56,
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
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Location",
                      style:
                      GoogleFonts.hind(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  width: 320,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Color(0xff5CB15A),
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}