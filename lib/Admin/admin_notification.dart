import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminNotification extends StatefulWidget {
  const AdminNotification({super.key});

  @override
  State<AdminNotification> createState() => _AdminNotificationState();
}

class _AdminNotificationState extends State<AdminNotification> {
  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();
  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        _timeController.text = picked.format(context);
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        _dateController.text =
            "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}"; // Formats date
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Center(
            child: Text("Notification",
                style: GoogleFonts.inter(fontSize: 24.sp))),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(left: 30.w, top: 30.h),
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Matter",
                    style: GoogleFonts.inter(
                        fontSize: 15.sp, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                child: TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      fillColor: Colors.white,
                      hintText: "content...",
                      filled: true,
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1))),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Time",
                    style: GoogleFonts.inter(
                        fontSize: 15.sp, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                child: TextFormField(
                  controller: _timeController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      fillColor: Colors.white,
                      hintText: "Select time",
                      filled: true,
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1))),
                  onTap: () => _selectTime(context),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Date",
                    style: GoogleFonts.inter(
                        fontSize: 15.sp, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.r),
                child: TextFormField(
                  controller: _dateController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      fillColor: Colors.white,
                      hintText: "Select Date",
                      filled: true,
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1))),
                  onTap: () => _selectDate(context),
                ),
              ),
            ],
          ),
          height: 700.h,
          width: 360.w,
          decoration: BoxDecoration(
              color: Color(0xffE4DADA),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 0,
                    blurRadius: 1,
                    offset: Offset(3, 3),
                    color: Colors.grey,
                    blurStyle: BlurStyle.inner)
              ]),
        ),
      )),
    );
  }
}
