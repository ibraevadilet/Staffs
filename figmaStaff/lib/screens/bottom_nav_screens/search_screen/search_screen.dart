import 'dart:math';

import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
            Text(
              "Поиск",
              style: TaskTextStyle.regular20,
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
            )
          ],
        ),
      ),
    );
  }
}
