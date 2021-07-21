import 'package:figmaStaff/styles/images.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

DirectoryList list = new DirectoryList();

class EcologyScreen extends StatelessWidget {
  const EcologyScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Экология",
          style: TaskTextStyle.regular20,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 373,
            child: ListView(
              children: [
                for (int i = 0; i < list.employeesList.length; i++)
                  buildAllDurectory(list, i, context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Baza_Of_Directory {
  String name;

  Baza_Of_Directory(name) {
    this.name = name;
  }
}

class DirectoryList {
  List<Baza_Of_Directory> employeesList = [
    Baza_Of_Directory(
      "Законы",
    ),
    Baza_Of_Directory(
      "Кодексы",
    ),
    Baza_Of_Directory(
      "Уставы",
    )
  ];
}

Widget buildAllDurectory(DirectoryList list, int index, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => EcologyScreen()));
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
            children: [
              Image.asset(
                ImagesPersons.file00,
                height: 42,
              ),
              SizedBox(
                width: 17,
              ),
              Text(
                list.employeesList[index].name,
                style: TaskTextStyle.normal16,
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
