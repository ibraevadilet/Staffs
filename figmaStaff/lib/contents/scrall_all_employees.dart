import 'package:figmaStaff/screens/detailedInformation.dart';
import 'package:figmaStaff/styles/images.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'baza_list.dart';

class Scrall_all_employees extends StatelessWidget {
  const Scrall_all_employees({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Все сотрудники",
            style: TaskTextStyle.bold16,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 429,
            child: ListView(
              children: [
                for (int i = 0; i < list.employeesList.length; i++)
                  buildAllEmployees(list, i, context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildCircleAvatar(EmployeeList list, int index, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DatailedInformation(index: index)));
    },
    child: CircleAvatar(
      radius: 40,
      child: Image.asset(
        list.employeesList[index].image,
        height: 60,
        width: 60,
      ),
    ),
  );
}

Widget buildAllEmployees(EmployeeList list, int index, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DatailedInformation(index: index)));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
          height: 64,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(list.employeesList[index].image),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        list.employeesList[index].name,
                        style: TaskTextStyle.normal16,
                      ),
                      Text(
                        list.employeesList[index].surname,
                        style: TaskTextStyle.normal16,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 17,
              ),
              Image.asset(
                ImagesPersons.phone,
                height: 24,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    ),
  );
}
