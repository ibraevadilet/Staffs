import 'package:figmaStaff/styles/colors.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Восстановить пароль",
          style: TaskTextStyle.regular20,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 81),
            Text(
              "Укажите адрес вашей электронной",
              style: TaskTextStyle.normal16.copyWith(color: Color(0xff757575)),
            ),
            Text(
              "почты. На нее будет отправлено",
              style: TaskTextStyle.normal16.copyWith(color: Color(0xff757575)),
            ),
            Text(
              "письмо с новым паролем.",
              style: TaskTextStyle.normal16.copyWith(color: Color(0xff757575)),
            ),
            SizedBox(height: 45),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffDEE1E5), width: 0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue[200], width: 0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "E-mail",
                hintStyle: TaskTextStyle.normal16,
              ),
            ),
            SizedBox(height: 36),
            Material(
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  width: 400,
                  height: 48,
                  decoration: BoxDecoration(
                      color: ColorsText.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Войти",
                    style: TaskTextStyle.normal16.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
