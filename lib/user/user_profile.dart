import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User_profile extends StatefulWidget {
  const User_profile({super.key});

  @override
  State<User_profile> createState() => _User_profileState();
}

class _User_profileState extends State<User_profile> {
  void initState() {
    // TODO: implement initState
    super.initState();
    print("hello");
    Userid();
  }

  Future<void> Userid() async {
    SharedPreferences data1 = await SharedPreferences.getInstance();
    setState(() {
      id = data1.getString("Userid");
    });
  }

  var id;
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
              style:
                  GoogleFonts.hind(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection("user_signup")
                .doc(id)
                .get(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text("user found"));
              }
              if (!snapshot.hasData || snapshot.data == null) {
                return Center(child: Text("no user data found"));
              }
              final user = snapshot.data!.data() as Map<String, dynamic>;
              return Column(
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
                        width: 130,
                      ),
                      Text(
                        user["name"]??"no data found",
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
                              user["name"]??"no data found",
                              style: GoogleFonts.hind(
                                  color: Colors.white, fontSize: 12),
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
                              user["number"]??"no data found",
                              style: GoogleFonts.hind(
                                  color: Colors.white, fontSize: 12),
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
                              user["email"]??"no data found",
                              style: GoogleFonts.hind(
                                  color: Colors.white, fontSize: 12),
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
                              user["place"]??"no data found",
                              style: GoogleFonts.hind(
                                  color: Colors.white, fontSize: 12),
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
              );
            }));
  }
}
