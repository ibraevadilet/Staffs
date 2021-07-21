import 'package:figmaStaff/contents/baza.dart';
import 'package:figmaStaff/contents/baza_list.dart';
import 'package:figmaStaff/contents/names.dart';
import 'package:figmaStaff/contents/show_modal_bottom.dart';
import 'package:figmaStaff/styles/colors.dart';
import 'package:figmaStaff/styles/images.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'call_screen.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

EmployeeList list = new EmployeeList();

class DatailedInformation extends StatefulWidget {
  final int index;
  DatailedInformation({Key key, this.index}) : super(key: key);

  @override
  _DatailedInformationState createState() => _DatailedInformationState();
}

class _DatailedInformationState extends State<DatailedInformation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 18,
                          ),
                          Image.asset(
                            list.employeesList[widget.index].image,
                            height: 114,
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            list.employeesList[widget.index].name,
                            style: TaskTextStyle.regular20,
                          ),
                          Text(
                            list.employeesList[widget.index].surname,
                            style: TaskTextStyle.regular20,
                          ),
                          SizedBox(
                            height: 11,
                          ),
                          Text(list.employeesList[widget.index].duty,
                              style: TaskTextStyle.normal16
                                  .copyWith(color: ColorsText.blue)),
                          SizedBox(
                            height: 25,
                          ),
                        ]),
                    Column(
                      children: [
                        Container(
                          height: 64,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 23),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Направление",
                                style: TaskTextStyle.normal12,
                              ),
                              Text(list.employeesList[widget.index].direction,
                                  style: TaskTextStyle.regular16),
                            ],
                          ),
                        ),
                        Divides(),
                        Container(
                          height: 64,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 23),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Отдел", style: TaskTextStyle.normal12),
                              Text(list.employeesList[widget.index].department,
                                  style: TaskTextStyle.regular16),
                            ],
                          ),
                        ),
                        Divides(),
                        Container(
                          height: 64,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 23),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email", style: TaskTextStyle.normal12),
                              Text(list.employeesList[widget.index].email,
                                  style: TaskTextStyle.regular16),
                            ],
                          ),
                        ),
                        Divides(),
                        Container(
                          height: 64,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 23),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Дата рождения",
                                style: TaskTextStyle.normal12,
                              ),
                              Text(list.employeesList[widget.index].dateOfbirth,
                                  style: TaskTextStyle.regular16),
                            ],
                          ),
                        ),
                        Divides(),
                        ShowModalBottom(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
