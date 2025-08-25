import 'package:college_app/Feature/auth/Presentation/widget/custom_button.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class DialogBody extends StatelessWidget {
  const DialogBody(
      {super.key,
      required this.content,
      required this.titelButtom,
      required this.subContent, required this.onPressed});
  final String content;
  final String subContent;
  final String titelButtom;
  final VoidCallback onPressed ; 

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: SizedBox(
        height: 406,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const CircleAvatar(
              backgroundColor: Color(0xffF5F8FF),
              radius: 50,
              child: Icon(
                Icons.check,
                size: 50,
                color: primaryColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              content,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Opacity(
              opacity: .8,
              child: Align(
                child: Text(
                  textAlign: TextAlign.center,
                  subContent,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 37),
            CustomButton(
              title: titelButtom,
              onPressed:  onPressed , 
            )
          ],
        ),
      ),
    );
  }
}
