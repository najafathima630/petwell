import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class user_home_page extends StatefulWidget {
  const user_home_page({super.key});

  @override
  State<user_home_page> createState() => _LoginPageState();
}

class _LoginPageState extends State<user_home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Welcome to Our  ",
                  style: GoogleFonts.inter(fontSize: 32),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "happy Pet’s family",
                  style: GoogleFonts.inter(fontSize: 32),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
            width: 360,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 20), // Adjust padding inside field
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIconColor: Color(0xffE5E5E5),
                      suffixIconColor: Color(0xffE5E5E5),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "Search",
                      filled: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Categoires",
                style: GoogleFonts.inter(fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(left: 170),
                child: Text(
                  "See all",
                  style: GoogleFonts.inter(color: Color(0xff46E4E4)),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 30),
                child: Container(
                  height: 132,
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("")),
                    color: Color(0xff5CB15A),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Shadow color with opacity
                        spreadRadius: 0, // How much the shadow spreads
                        blurRadius: 4, // Softness of the shadow
                        offset: Offset(0, 4), // X and Y offset of the shadow
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Container(
                  height: 132,
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("")),
                    color: Color(0xff5CB15A),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Shadow color with opacity
                        spreadRadius: 0, // How much the shadow spreads
                        blurRadius: 4, // Softness of the shadow
                        offset: Offset(0, 4), // X and Y offset of the shadow
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "GROOMING",
                  style: GoogleFonts.inter(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90),
                child: Text(
                  "VACCINATION",
                  style: GoogleFonts.inter(),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 30),
                child: Container(
                  height: 132,
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("")),
                    color: Color(0xff5CB15A),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Shadow color with opacity
                        spreadRadius: 0, // How much the shadow spreads
                        blurRadius: 4, // Softness of the shadow
                        offset: Offset(0, 4), // X and Y offset of the shadow
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Container(
                  height: 132,
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("")),
                    color: Color(0xff5CB15A),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.2), // Shadow color with opacity
                        spreadRadius: 0, // How much the shadow spreads
                        blurRadius: 4, // Softness of the shadow
                        offset: Offset(0, 4), // X and Y offset of the shadow
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "FOOD",
                  style: GoogleFonts.inter(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 120),
                child: Text(
                  "APPOINMENT",
                  style: GoogleFonts.inter(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
