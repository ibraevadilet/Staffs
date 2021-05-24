import 'package:figmaStaff/contents/scrall_all_employees.dart';
import 'package:figmaStaff/styles/colors.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detailedInformation.dart';

int index;

class Employers extends StatelessWidget {
  const Employers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Сотрудники",
          style: TaskTextStyle.regular20,
        ),
      ),
      body: Container(
        color: Color(0xffE5E5E5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 42,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Поиск",
                        hintStyle: TaskTextStyle.mini16,
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.grey[400],
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffE8E8E8), width: 0.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffE8E8E8), width: 0.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "У кого сегодня день рождения",
                    style:
                        TaskTextStyle.bold16.copyWith(color: ColorsText.blue),
                  )
                ],
              ),
            ),
            Container(
              height: 87,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, top: 14, bottom: 14),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < list.employeesList.length; i++)
                    buildCircleAvatar(list, i, context),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "У кого завтра день рождения",
                style: TaskTextStyle.bold16.copyWith(color: ColorsText.black),
              ),
            ),
            Container(
              height: 87,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, top: 14, bottom: 14),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < list.employeesList.length; i++)
                    buildCircleAvatar(list, i, context),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Scrall_all_employees(),
          ],
        ),
      ),
    );
  }
}
