import 'package:figmaStaff/contents/baza.dart';
import 'package:figmaStaff/contents/baza_list.dart';

import 'package:figmaStaff/styles/images.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'ListOfEmployees.dart';

EmployeeList list = new EmployeeList();

class CallPhone extends StatefulWidget {
  final int index;
  CallPhone({Key key, this.index}) : super(key: key);

  @override
  _CallPhoneState createState() => _CallPhoneState();
}

class _CallPhoneState extends State<CallPhone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 14),
      height: 343,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 23, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Позвонить",
                      style: TaskTextStyle.bold20,
                    ),
                    Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffC4C4C4),
                          ),
                          height: 30,
                          width: 30,
                          child: Icon(Icons.clear_rounded),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  "Жапаров Жапар\nЖапарович",
                  style: TaskTextStyle.regular16,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Container(
            height: 190,
            child: ListView(
              children: [
                for (int i = 0; i < list.employeesList.length; i++)
                  phoneScrollOfButton(list, i, context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

_callNumber() async {
  const number = '0554160500'; //set the number here
  bool res = await FlutterPhoneDirectCaller.callNumber(number);
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      context: context,
      builder: (BuildContext bc) {
        return CallPhone(
          index: index,
        );
      });
}

Widget phoneScrollOfButton(EmployeeList list, int index, BuildContext context) {
  return Column(
    children: [
      Container(
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              _callNumber();
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
