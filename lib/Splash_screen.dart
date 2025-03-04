import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5CB15A),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 170.w, top: 80.h),
                child: Container(
                  width: 100.w,
                  height: 100.h,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 200.h),
            child: Container(
              width: 299.w,
              height: 60.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.sp)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 80.h),
            child: Container(
              child: Center(child: Text("Doctor",)),
              width: 299.w,
              height: 60.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.sp)),
            ),
          ),
        ],
      ),
    );
  }
}
