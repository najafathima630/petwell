import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:petwell_project/user/user_homa_page.dart';

import 'Navigation_user.dart';

class User_add_appoinment_details extends StatefulWidget {
  const User_add_appoinment_details({super.key});

  @override
  State<User_add_appoinment_details> createState() =>
      _User_add_appoinment_detailsState();
}

class _User_add_appoinment_detailsState
    extends State<User_add_appoinment_details> {
  String? selectedGender = "Male";
  // String? selectedPetType;
  // String? selectedDay, selectedMonth, selectedYear;
  // String? selectedColor;
  // String? selectedWeight;
  // bool isFemale = true;
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
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

  TextEditingController timeController = TextEditingController();

  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _pickTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  final form_key = GlobalKey<FormState>();
  TextEditingController namectrl = TextEditingController();
  TextEditingController numberctrl = TextEditingController();
  TextEditingController ownerctrl = TextEditingController();
  TextEditingController datectrl = TextEditingController();
  TextEditingController pettypectrl = TextEditingController();
  TextEditingController timectrl = TextEditingController();
  TextEditingController genderctrl = TextEditingController();

  Future<void> pets() async {
    if (!form_key.currentState!.validate()) {
      return;
    }
    FirebaseFirestore.instance.collection("Appoinment_details").add({
      "name": namectrl.text,
      "number": numberctrl.text,
      "time": _selectedTime.format(context),
      "pet_type": pettypectrl.text,
      "date": selectedDate,
      "owner_name": ownerctrl.text,
      "gender": selectedGender ?? "Male",
      "Status": 0,
      "Profile_path":
          "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    });

    print("Success");
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return NavigationBarMechanic();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        leading: Icon(
          Icons.arrow_back_ios_new,
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            "APPOINMENT",
            style: GoogleFonts.hind(),
          ),
        ),
      ),
      body: ListView(children: [
        Form(
          key: form_key,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "pet's Name",
                              style: GoogleFonts.rubik(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  Color(0xFFFFF4EC), // Light peach background
                              borderRadius:
                                  BorderRadius.circular(12), // Rounded corners
                            ),
                            child: TextFormField(
                              controller: namectrl,
                              decoration: InputDecoration(
                                hintText: "Name",
                                hintStyle: TextStyle(
                                    color: Colors.grey), // Hint text color
                                border:
                                    InputBorder.none, // Remove default border
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12), // Padding inside field
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Appoinment Date",
                              style: GoogleFonts.rubik(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color:
                                  Color(0xFFFFF4EC), // Light peach background
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextFormField(
                              controller: TextEditingController(
                                text: selectedDate == null
                                    ? ""
                                    : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Empty password";
                                }
                                return null;
                              },
                              readOnly: true, // Prevents manual typing
                              decoration: InputDecoration(
                                hintText: "Select Date",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: SvgPicture.asset(
                                    'assets/Vector (5).svg', // ✅ Ensure this file exists
                                    height: 20.h,
                                    width: 20.w,
                                    color: Colors.black,
                                  ),
                                ), // Calendar icon
                              ),
                              onTap: () {
                                _selectDate(context); // Open calendar on tap
                              },
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Appoinment Date",
                              style: GoogleFonts.rubik(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: Container(
                            width: 94,
                            height: 54.72,
                            decoration: BoxDecoration(
                              color:
                                  Color(0xFFFFF4EC), // Light peach background
                              borderRadius:
                                  BorderRadius.circular(12), // Rounded corners
                            ),
                            child: TextFormField(
                              controller: timectrl,
                              // // validator: (value) {
                              // //   if (value!.isEmpty) {
                              // //     return "Empty password";
                              // //   }
                              // //   return null;
                              // },
                              decoration: InputDecoration(
                                  hintText: "Pick Time",
                                  hintStyle: TextStyle(
                                      color: Colors.black), // Hint text color
                                  border:
                                      InputBorder.none, // Remove default border
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  suffixIcon: Icon(
                                      Icons.lock_clock) // Padding inside field
                                  ),
                              onTap: () async {
                                await _pickTime();
                                timectrl.text = _selectedTime
                                    .format(context); // <-- Add this
                                // Open time picker on tap
                              },
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Gender",
                              style: GoogleFonts.rubik(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text("Male", style: TextStyle(fontSize: 16)),
                              Radio(
                                value: "Male",
                                groupValue: selectedGender,
                                onChanged: (value) {
                                  setState(() {
                                    selectedGender = value.toString();
                                  });
                                },
                                activeColor: Colors.green, // Selected color
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text("Female", style: TextStyle(fontSize: 16)),
                              SizedBox(
                                width: 20,
                              ),
                              Radio(
                                value: "Female",
                                groupValue: selectedGender,
                                onChanged: (value) {
                                  setState(() {
                                    selectedGender = value.toString();
                                  });
                                },
                                activeColor: Colors.green, // Selected color
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "pet'Type",
                              style: GoogleFonts.rubik(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  Color(0xFFFFF4EC), // Light peach background
                              borderRadius:
                                  BorderRadius.circular(12), // Rounded corners
                            ),
                            child: TextFormField(
                              controller: pettypectrl,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Empty password";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "Type",
                                hintStyle: TextStyle(
                                    color: Colors.grey), // Hint text color
                                border:
                                    InputBorder.none, // Remove default border
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12), // Padding inside field
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Owner name",
                              style: GoogleFonts.rubik(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  Color(0xFFFFF4EC), // Light peach background
                              borderRadius:
                                  BorderRadius.circular(12), // Rounded corners
                            ),
                            child: TextFormField(
                              controller: ownerctrl,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Empty password";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "Name",
                                hintStyle: TextStyle(
                                    color: Colors.grey), // Hint text color
                                border:
                                    InputBorder.none, // Remove default border
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12), // Padding inside field
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Number",
                              style: GoogleFonts.rubik(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF4EC),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IntlPhoneField(
                              controller: numberctrl,
                              initialCountryCode:
                                  'IN', // or your preferred country
                              decoration: InputDecoration(
                                hintText: "Phone Number",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                              ),
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (form_key.currentState!.validate()) {
                              pets();
                            }
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                "Book Appoinment",
                                style: GoogleFonts.hind(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            width: 295,
                            height: 46,
                            decoration: BoxDecoration(
                                color: Color(0xff5CB15A),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        )
                      ],
                    ),
                    height: 630,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color(0xffF0E4E4), // Background color
                      borderRadius:
                          BorderRadius.circular(15), // Rounded corners
                      border: Border.all(
                          width: 1, color: Colors.black), // Border color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow color
                          spreadRadius: 2, // Expands the shadow
                          blurRadius: 10, // Softness of the shadow
                          offset:
                              Offset(4, 4), // Moves shadow to the bottom-right
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
