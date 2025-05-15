import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/user/user_add_appoinment_details.dart';
import 'package:petwell_project/user/user_add_vaccination%20.dart';
import 'package:petwell_project/user/user_grooming.dart';
import 'package:petwell_project/user/user_profile.dart';

class user_homepage extends StatefulWidget {
  const user_homepage({super.key});

  @override
  State<user_homepage> createState() => _user_homepageState();
}

class _user_homepageState extends State<user_homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return User_profile();
                  },
                ));
              },
              icon: Icon(Icons.person))),
      body: ListView(children: [
        Column(
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
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return UserGrooming();
                        },
                      ));
                    },
                    child: Container(
                      height: 132.h,
                      width: 170.w
                      ,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/petgrooming-removebg-preview 1 (1).png")),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.2), // Shadow color with opacity
                            spreadRadius: 0, // How much the shadow spreads
                            blurRadius: 4, // Softness of the shadow
                            offset:
                                Offset(4, 4), // X and Y offset of the shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return User_add_vaccination();
                    },));
                  },
                    child: Container(
                      height: 132.h,
                      width: 170.w
                      ,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/vaccination-removebg-preview 1 (1).png")),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.2), // Shadow color with opacity
                            spreadRadius: 0, // How much the shadow spreads
                            blurRadius: 4, // Softness of the shadow
                            offset: Offset(4, 4), // X and Y offset of the shadow
                          ),
                        ],
                      ),
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
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Container(
                    height: 132.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/foodnew-removebg-preview 1 (1).png")),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black
                              .withOpacity(0.2), // Shadow color with opacity
                          spreadRadius: 0, // How much the shadow spreads
                          blurRadius: 4, // Softness of the shadow
                          offset: Offset(4, 4), // X and Y offset of the shadow
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return User_add_appoinment_details();
                        },
                      ));
                    },
                    child: Container(
                      height: 132.h,
                      width: 170.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images-removebg-preview 1 (1).png")),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.2), // Shadow color with opacity
                            spreadRadius: 0, // How much the shadow spreads
                            blurRadius: 4, // Softness of the shadow
                            offset:
                                Offset(4, 4), // X and Y offset of the shadow
                          ),
                        ],
                      ),
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
      ]),
    );
  }
}
