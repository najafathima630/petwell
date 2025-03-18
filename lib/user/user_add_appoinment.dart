import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class User_add_vaccination extends StatefulWidget {
  const User_add_vaccination({super.key});

  @override
  State<User_add_vaccination> createState() => _User_add_vaccinationState();
}

class _User_add_vaccinationState extends State<User_add_vaccination> {
  bool isFemale = true;

  Future<void> _selectDate(BuildContext context) async {
    DateTime? selectedDate;
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        leading: Icon(Icons.arrow_back_ios_new),
        title: Center(
            child: Text(
              "Vaccination",
              style: GoogleFonts.hind(),
            )),
      ),
      body: ListView(
        children:[ Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "vaccination Name",
                  style: GoogleFonts.rubik(
                      fontSize: 14, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9), // Light peach background
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your vacccination name",
                    hintStyle: TextStyle(
                        color: Colors.grey, fontSize: 12), // Hint text color
                    border: InputBorder.none, // Remove default border
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12), // Padding inside field
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: Text(
                    "Date",
                    style: GoogleFonts.rubik(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9), // Light peach background
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextFormField(
                  readOnly: true, // Prevents manual typing
                  decoration: InputDecoration(
                    hintText: "12/10/2003",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    suffixIcon: Icon(Icons.calendar_today,
                        color: Colors.black), // Calendar icon
                  ),
                  onTap: () {
                    _selectDate(context); // Open calendar on tap
                  },
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: Text(
                    "Status",
                    style: GoogleFonts.rubik(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9), // Light peach background
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Completed",
                    hintStyle: TextStyle(
                        color: Colors.grey, fontSize: 12), // Hint text color
                    border: InputBorder.none, // Remove default border
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12), // Padding inside field
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Row(
                children: [
                  // First Button: Female
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                          isFemale ? Color(0xff238F8F) : Colors.white,
                          side: BorderSide(color: Colors.black),
                        ),
                        onPressed: () => setState(() => isFemale = true),
                        child: Text("First dose",
                            style: TextStyle(
                                color: isFemale ? Colors.white : Colors.green)),
                      ),
                    ),
                  ),
                  // Second Button: Male
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isFemale ? Colors.white : Colors.green,
                          side: BorderSide(color: Colors.black),
                        ),
                        onPressed: () => setState(() => isFemale = false),
                        child: Text("second dose",
                            style: TextStyle(
                                color: isFemale ? Colors.green : Colors.white)),
                      ),
                    ),
                  ),
                  // Third Button: Other
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20, left: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isFemale == false
                              ? Color(0xff238F8F)
                              : Colors.white,
                          side: BorderSide(color: Colors.black),
                        ),
                        onPressed: () {
                          setState(() => isFemale =
                          false); // "null" can represent "Other" or a neutral option.
                        },
                        child: Text("Booster",
                            style: TextStyle(
                                color: isFemale == false
                                    ? Colors.white
                                    : Colors.green)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Container(
                child: Center(
                    child: Text(
                      "Add vaccination",
                      style: GoogleFonts.hind(color: Colors.white),
                    )),
                width: 172,
                height: 42,
                decoration: BoxDecoration(
                    color: Color(0xff5CB15A),
                    borderRadius: BorderRadius.circular(12)),
              ),
            )
          ],
        ),
     ] ),
    );
  }
}