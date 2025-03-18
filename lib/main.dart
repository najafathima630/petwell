import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petwell_project/user/user_add_appoinment.dart';
import 'package:petwell_project/user/user_add_appoinment_details.dart';
import 'package:petwell_project/user/user_login.dart';
import 'package:petwell_project/user/user_signup.dart';

import 'Admin/Admin_doctor.dart';
import 'Admin/admin_dashboard.dart';
import 'Admin/admin_user.dart';
import 'Admin/admin_view_doctor_details.dart';
import 'Admin/admin_view_user_details.dart';
import 'Doctor/Add_vaccination.dart';
import 'Doctor/Doctor_login_page.dart';
import 'Doctor/Doctor_signup_page.dart';
import 'Doctor/Doctor_view_user_details_page.dart';
import 'Doctor/Tabbar.dart';
import 'Doctor/doctor_notification.dart';
import 'Doctor/user_details.dart';
import 'Doctor/view_appoinment.dart';
import 'Splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(412, 892),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                // This is the theme of your application.
                //
                // TRY THIS: Try running your application with "flutter run". You'll see
                // the application has a purple toolbar. Then, without quitting the app,
                // try changing the seedColor in the colorScheme below to Colors.green
                // and then invoke "hot reload" (save your changes or press the "hot
                // reload" button in a Flutter-supported IDE, or press "r" if you used
                // the command line to start the app).
                //
                // Notice that the counter didn't reset back to zero; the application
                // state is not lost during the reload. To reset the state, use hot
                // restart instead.
                //
                // This works for code too, not just values: Most code changes can be
                // tested with just a hot reload.
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: AdminViewUserDetails(),
            ));
  }
}
