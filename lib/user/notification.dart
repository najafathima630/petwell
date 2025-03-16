import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class UserNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 14, top: 50),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Admin Notification",
                              style: GoogleFonts.inter(
                                color: Colors.grey,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Text(
                              "10:00 am",
                              style: GoogleFonts.inter(
                                color: Colors.grey,
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Padding(
                            padding:  EdgeInsets.only(top: 130),
                            child: Text("12/02/2025",style: GoogleFonts.inter(color: Colors.grey),),
                          )],
                        )
                      ],
                    ),
                    width: 323.61,
                    height: 178.41,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.grey),
                        boxShadow: List.filled(1, BoxShadow(blurRadius: 1))),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
