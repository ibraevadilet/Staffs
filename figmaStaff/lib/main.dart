import 'package:figmaStaff/screens/ListOfEmployees.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "FigmaStaff",
        debugShowCheckedModeBanner: false,
        home: Employers(),
      ),
    );
  }
}
