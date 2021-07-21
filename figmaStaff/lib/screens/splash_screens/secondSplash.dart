import 'package:figmaStaff/screens/auth_and_forgot_screen/AuthScreen.dart';
import 'package:figmaStaff/styles/images.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondSplash extends StatefulWidget {
  SecondSplash({Key key}) : super(key: key);

  @override
  _SecondSplashState createState() => _SecondSplashState();
}

class _SecondSplashState extends State<SecondSplash> {
  @override
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AuthScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImagesPersons.logo2,
            height: 58,
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            "Государственная инспекция",
            style: TaskTextStyle.normal16,
          ),
          Text(
            "по экологической и технической",
            style: TaskTextStyle.normal16,
          ),
          Text(
            "безопасности при Правительстве",
            style: TaskTextStyle.normal16,
          ),
          Text(
            "Кыргызской Республики",
            style: TaskTextStyle.normal16,
          ),
        ],
      ),
    ));
  }
}
