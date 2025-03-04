import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class user_add_appoinment extends StatefulWidget {
  const user_add_appoinment({super.key});

  @override
  State<user_add_appoinment> createState() => _user_add_appoinmentState();
}

class _user_add_appoinmentState extends State<user_add_appoinment> {
  String selectedTime = "04:00 pm"; // Default selected time
  String selectedDate = "Mon\n12/1"; // Default selected date

  final List<String> timeSlots = ["03:00 pm", "04:00 pm", "05:00 pm"];
  final List<String> dates = [
    "Wed\n8/1",
    "Sat\n10/1",
    "Sun\n11/1",
    "Mon\n12/1",
    "Tue\n13/1"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 314,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(
                          "Assets/doctor.jpg",
                        ),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Name",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 24),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Specialist",
                style:
                GoogleFonts.inter(fontSize: 24, color: Color(0xffA8A0A0)),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Select Date",
                style: GoogleFonts.inter(fontSize: 24),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dates.map((date) {
              bool isSelected = date == selectedDate;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedDate = date;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0xff5CB15A) : Colors.white,
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Text(
                    date,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 20),

          // Time Selection
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text(
                "Select Time",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: timeSlots.map((time) {
              bool isSelected = time == selectedTime;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTime = time;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0xff5CB15A) : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Text(
                    time,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Biography",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Dr. John Doe is a specialist in internal medicine with over",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "10 years of experience.",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Container(
                  child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 20),
                      )),
                  width: 333,
                  height: 50,
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
