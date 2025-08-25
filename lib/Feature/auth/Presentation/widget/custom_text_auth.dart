


import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomTextAuth extends StatelessWidget {
  const CustomTextAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(signupView); 
      },
      child: const Text.rich(
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
