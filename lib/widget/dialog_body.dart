import 'package:college_app/constant.dart';
import 'package:college_app/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DialogBody extends StatelessWidget {
  const DialogBody(
      {super.key,
      required this.content,
      required this.titelButtom,
      required this.subContent});
  final String content;
  final String subContent;
  final String titelButtom;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: SizedBox(
        height: 406,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundColor: Color(0xffF5F8FF),
              radius: 50,
              child: Icon(
                Icons.check,
                size: 50,
                color: primaryColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              content,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Opacity(
              opacity: .8,
              child: Align(
                child: Text(
                  textAlign: TextAlign.center,
                  subContent,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 37),
            CustomButton(
              title: titelButtom,
              onPressed: () {
                context.go(loginView);
              },
            )
          ],
        ),
      ),
    );
  }
}
