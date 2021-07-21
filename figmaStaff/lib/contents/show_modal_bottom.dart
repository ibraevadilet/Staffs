import 'package:figmaStaff/screens/bottom_nav_screens/staffs_screen/call_screen.dart';
import 'package:figmaStaff/styles/images.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'baza.dart';
import 'baza_list.dart';

class ShowModalBottom extends StatelessWidget {
  const ShowModalBottom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        children: [
          for (int i = 0; i < list.employeesList.length; i++)
            phoneScroll(list, i, context),
        ],
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      context: context,
      builder: (BuildContext bc) {
        return CallPhone();
      });
}

Widget phoneScroll(EmployeeList list, int index, BuildContext context) {
  return Column(
    children: [
      Container(
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              _settingModalBottomSheet(context);
            },
            child: Container(
              height: 64,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Телефон основной",
                        style: TaskTextStyle.normal12,
                      ),
                      Text(list.employeesList[index].phone1,
                          style: TaskTextStyle.regular16),
                    ],
                  ),
                  Image.asset(
                    ImagesPersons.phone,
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Divides(),
    ],
  );
}
