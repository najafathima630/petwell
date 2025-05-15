import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petwell_project/user/user_homa_page.dart';

import 'Navigation_user.dart';

class PetProfilePage extends StatefulWidget {
  @override
  _PetProfilePageState createState() => _PetProfilePageState();
}

class _PetProfilePageState extends State<PetProfilePage> {
  String? selectedColor;
  String? selectedWeight;
  String _selectedGender = "";
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

  final form_key = GlobalKey<FormState>();
  TextEditingController birthdatectrl = TextEditingController();
  TextEditingController colorctrl = TextEditingController();
  TextEditingController genderctrl = TextEditingController();
  TextEditingController weightctrl = TextEditingController();

  Future<void> petprofile() async {
    FirebaseFirestore.instance.collection("pets_details").add({
      "birthday": selectedDate,
      "color": selectedColor,
      "gender": _selectedGender,
      "weight": selectedWeight,

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
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return PetProfilePage();
                  },
                ));
              },
              icon: Icon(Icons.add))
        ],
        title: Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text("Pet Profile", style: TextStyle(color: Colors.black)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xffBDDCBD),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.pets, color: Colors.green),
                    SizedBox(width: 8),
                    Text("Profile Details",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images (3) 2.png"),
              ),
              SizedBox(height: 10),
              Text( "Name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              TextField(
                controller: TextEditingController(
                  text: selectedDate == null
                      ? ""
                      : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
                ),
                decoration: InputDecoration(
                  hintText: "BirthDate",
                  prefixIcon: Icon(Icons.calendar_today),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                readOnly: true,
                onTap: () => _selectDate(context),
              ),
              SizedBox(height: 10),
              _buildDropdownField(
                  "Color", ["Black", "White", "Brown", "Golden"], selectedColor,
                  (val) {
                setState(() => selectedColor = val);
              }),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _selectedGender == "female"
                            ? Colors.green
                            : Colors.white,
                        side: BorderSide(color: Colors.green),
                      ),
                      onPressed: () =>
                          setState(() => _selectedGender = "female"),
                      child: Text(
                        "Female",
                        style: TextStyle(
                          color: _selectedGender == "female"
                              ? Colors.white
                              : Colors.green,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _selectedGender == "male"
                            ? Colors.green
                            : Colors.white,
                        side: BorderSide(color: Colors.green),
                      ),
                      onPressed: () => setState(() => _selectedGender = "male"),
                      child: Text(
                        "Male",
                        style: TextStyle(
                          color: _selectedGender == "male"
                              ? Colors.white
                              : Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              _buildDropdownField(
                  "Weight", ["1kg", "2kg", "3kg", "4kg"], selectedWeight,
                  (val) {
                setState(() => selectedWeight = val);
              }),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: InkWell(
                  onTap: () {
                    petprofile();
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Save",
                      style: GoogleFonts.inter(fontSize: 24),
                    )),
                    height: 54,
                    width: 356,
                    decoration: BoxDecoration(
                        color: Color(0xff5CB15A),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }

  Widget _buildTextField(String hint, IconData icon) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  Widget _buildDropdownField(String hint, List<String> items,
      String? selectedItem, Function(String?) onChanged) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      value: selectedItem,
      items: items.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
