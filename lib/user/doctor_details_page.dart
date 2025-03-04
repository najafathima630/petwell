import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class doctor_details extends StatefulWidget {
  const doctor_details({super.key});

  @override
  State<doctor_details> createState() => _doctor_detailsState();
}

class _doctor_detailsState extends State<doctor_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Center(child: Text("DOCTOR")),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Our Best Veterinarian",
                style: GoogleFonts.inter(fontSize: 15,fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(left: 130),
                child: Text(
                  "See all",
                  style: GoogleFonts.inter(color: Color(0xff46E4E4)),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xffCF6A6AF0E4E4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.grey[400],
                          ),
                          child: const Icon(Icons.person,
                              size: 30, color: Colors.white),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name",
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              Text("Experience",
                                  style: GoogleFonts.inter(
                                      fontSize: 14, color: Colors.black,fontWeight: FontWeight.w600)),
                              Text("Specialist",
                                style: GoogleFonts.inter(
                                    fontSize: 14, color: Colors.black,fontWeight: FontWeight.w600),),
                              Text("Contact number",
                                  style: GoogleFonts.inter(
                                      fontSize: 14, color: Colors.black,fontWeight: FontWeight.w600)),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(Icons.access_time,
                                    size: 16, color: Colors.black,),
                                  const SizedBox(width: 5),
                                  Text("Monday - Friday at 8:00 am - 5:00pm",
                                      style: GoogleFonts.inter(
                                          fontSize: 12, color: Colors.black)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}