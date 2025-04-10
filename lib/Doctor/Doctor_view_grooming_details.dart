import 'package:flutter/material.dart';

class DoctorViewGroomingDetails extends StatefulWidget {
  const DoctorViewGroomingDetails({super.key});

  @override
  State<DoctorViewGroomingDetails> createState() =>
      _DoctorViewGroomingDetailsState();
}

class _DoctorViewGroomingDetailsState extends State<DoctorViewGroomingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Grooming Details"),
      ),
    );
  }
}
