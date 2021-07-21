import 'package:figmaStaff/screens/bottom_nav_screens/main_nav_bar.dart';
import 'package:figmaStaff/styles/colors.dart';
import 'package:figmaStaff/styles/images.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forgot_pass.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              Image.asset(
                ImagesPersons.logo2,
                height: 70,
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
              SizedBox(
                height: 31,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xffDEE1E5), width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[200], width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Логин",
                  hintStyle: TaskTextStyle.normal16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Pass(),
              SizedBox(
                height: 36,
              ),
              Material(
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavBar())),
                  child: Container(
                    alignment: Alignment.center,
                    width: 400,
                    height: 48,
                    decoration: BoxDecoration(
                        color: ColorsText.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Войти",
                      style:
                          TaskTextStyle.normal16.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForgotPass())),
                child: Container(
                  height: 44,
                  alignment: Alignment.center,
                  child: Text(
                    "Забыли пароль?",
                    style: TaskTextStyle.normal16,
                  ),
                ),
              ),
              SizedBox(
                height: 210,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Русский',
                      style: TaskTextStyle.regular14
                          .copyWith(color: Color(0xff3B81EA)),
                    ),
                    Text(
                      'Кыргызча',
                      style: TaskTextStyle.normal14,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class Pass extends StatefulWidget {
  Pass({Key key}) : super(key: key);

  @override
  _PassState createState() => _PassState();
}

class _PassState extends State<Pass> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffDEE1E5), width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue[200], width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: "Пароль",
        hintStyle: TaskTextStyle.normal16,
      ),
    ));
  }
}
