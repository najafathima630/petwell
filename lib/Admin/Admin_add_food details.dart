import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminAddFood_details extends StatefulWidget {
  const AdminAddFood_details({super.key});

  @override
  State<AdminAddFood_details> createState() => _AdminAddFood_detailsState();
}

class _AdminAddFood_detailsState extends State<AdminAddFood_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5CB15A),
        title: Center(child: Text("FOODS")),
      ),body: Column(children: [Row(children: [],)],),
    );
  }
}
