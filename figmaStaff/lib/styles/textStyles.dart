import 'package:figmaStaff/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTextStyle {
  static String bold = "MuseoSansCyrl900";
  static String regular = "MuseoSansCyrl700";
  static String normal = "MuseoSansCyrl500";

  static TextStyle bold20 = TextStyle(
      fontFamily: bold,
      fontWeight: FontWeight.w900,
      fontSize: 20,
      color: ColorsText.black);

  static TextStyle bold16 = TextStyle(
      fontFamily: bold,
      fontWeight: FontWeight.w900,
      fontSize: 16,
      color: ColorsText.black);

  static TextStyle normal16 = TextStyle(
      fontFamily: normal,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: ColorsText.black);

  static TextStyle regular20 = TextStyle(
      fontFamily: regular,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: ColorsText.black);

  static TextStyle normal12 = TextStyle(
      fontFamily: normal,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: ColorsText.grey);

  static TextStyle regular16 = TextStyle(
      fontFamily: regular,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: ColorsText.black);

  static TextStyle mini16 = TextStyle(
      fontFamily: "MuseoSansCyrl300",
      fontWeight: FontWeight.w300,
      fontSize: 16,
      color: Color(0xff757575));
}
