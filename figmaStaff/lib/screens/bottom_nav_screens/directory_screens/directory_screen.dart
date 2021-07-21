import 'dart:math';

import 'package:figmaStaff/styles/colors.dart';
import 'package:figmaStaff/styles/images.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ecology_screen.dart';

DirectoryList list = new DirectoryList();

class DirectoryScreen extends StatefulWidget {
  DirectoryScreen({Key key}) : super(key: key);

  @override
  _DirectoryScreenState createState() => _DirectoryScreenState();
}

class _DirectoryScreenState extends State<DirectoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Справочник напрвлений",
                  style: TaskTextStyle.regular20,
                ),
                Material(
                  child: Icon(
                    Icons.more_vert,
                    color: ColorsText.blue,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
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
            Container(
              height: 373,
              child: ListView(
                children: [
                  for (int i = 0; i < list.employeesList.length; i++)
                    buildAllDurectory(list, i, context),
                ],
              ),
            ),
            Drop()
          ],
        ),
      ),
    );
  }
}

class Baza_Of_Directory {
  String image;
  String name;

  Baza_Of_Directory(image, name) {
    this.image = image;
    this.name = name;
  }
}

class DirectoryList {
  List<Baza_Of_Directory> employeesList = [
    Baza_Of_Directory(
      ImagesPersons.docs,
      "Инструкция",
    ),
    Baza_Of_Directory(
      ImagesPersons.gress,
      "Экология",
    ),
    Baza_Of_Directory(
      ImagesPersons.flash,
      "Электроэнергия",
    ),
    Baza_Of_Directory(
      ImagesPersons.fire,
      "Пожарная безопасность",
    ),
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
                list.employeesList[index].image,
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

List<String> countries = ['Обновить', 'Язык', 'О программе', 'Выход'];

class Drop extends StatefulWidget {
  Drop({Key key}) : super(key: key);

  @override
  _DropState createState() => _DropState();
}

class _DropState extends State<Drop> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        child: Icon(
          Icons.more_vert,
          color: ColorsText.blue,
        ),
        itemBuilder: (context) => [
          const PopupMenuItem(child: Text('Обновить')),
          const PopupMenuItem(child: Text('Язык')),
          const PopupMenuItem(child: Text('О программе')),
          const PopupMenuItem(child: Text('Выход')),
        ],
      ),
    );
  }
}
