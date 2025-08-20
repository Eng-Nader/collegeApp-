import 'package:college_app/constant.dart';
import 'package:college_app/view/sign_up_view.dart';
import 'package:flutter/material.dart';

class CustomTextAuth extends StatelessWidget {
  const CustomTextAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignupView()));
      },
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Dont have Account ?   ',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            TextSpan(
              text: 'SignUp',
              style: TextStyle(
                color: primaryColor,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
