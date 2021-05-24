import 'package:figmaStaff/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailedDescription {
  String image;
  String name;
  String surname;
  String duty;
  String direction;
  String department;
  String email;
  String dateOfbirth;
  String phone1;
  String phone2;
  String phone3;

  DetailedDescription(image, name, surname, duty, direction, department, email,
      dateOfbirth, phone1, phone2, phone3) {
    this.image = image;
    this.name = name;
    this.surname = surname;
    this.duty = duty;
    this.direction = direction;
    this.department = department;
    this.email = email;
    this.dateOfbirth = dateOfbirth;
    this.phone1 = phone1;
    this.phone2 = phone2;
    this.phone3 = phone3;
  }
}

class Divides extends StatelessWidget {
  const Divides({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Divider(
        color: ColorsText.lines,
        height: 0.1,
        thickness: 1,
      ),
    );
  }
}
