import 'package:figmaStaff/contents/baza.dart';
import 'package:figmaStaff/screens/ListOfEmployees.dart';
import 'package:figmaStaff/styles/colors.dart';
import 'package:figmaStaff/styles/images.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'call_screen.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

var adi = DetailedDescription(
  "Дирекция управления",
  "Отдел управления",
  "mjagarkulov@gosecotech.kg",
  "16.09.1972",
  "+996 556 335 576",
  "+996 556 335 576",
  "+996 556 335 576",
);

class DetailedInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        // title: Text("Детальное инфо"),
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
                          ImagesPersons.myrsabek,
                          height: 114,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          "Жыпаркулов Мырзабек",
                          style: TaskTextStyle.regular20,
                        ),
                        Text(
                          "Жыпаркулович",
                          style: TaskTextStyle.regular20,
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text("Генеральный директор",
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
                            Text(adi.direction, style: TaskTextStyle.regular16),
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
                            Text(adi.department,
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
                            Text(adi.email, style: TaskTextStyle.regular16),
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
                            Text(adi.dateOfbirth,
                                style: TaskTextStyle.regular16),
                          ],
                        ),
                      ),
                      Divides(),
                      Container(
                        height: 261,
                        child: ListView(
                          children: scrollNumber,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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

List<Widget> scrollNumber = [
  ScrollNumberFunction(),
  ScrollNumberFunction(),
  ScrollNumberFunction(),
  ScrollNumberFunction(),
  ScrollNumberFunction(),
  ScrollNumberFunction(),
  ScrollNumberFunction(),
  ScrollNumberFunction(),
  ScrollNumberFunction(),
  ScrollNumberFunction(),
];

class ScrollNumberFunction extends StatelessWidget {
  const ScrollNumberFunction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        Text(adi.phone3, style: TaskTextStyle.regular16),
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
}
