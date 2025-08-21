import 'package:college_app/constant.dart';
import 'package:college_app/widget/custom_button.dart';
import 'package:college_app/widget/custom_text_fild.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            IconButton(
              onPressed: () => context.go(resentpassword),
              icon: Icon(
                Icons.arrow_back_ios,
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Text(
              'Create New Password',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Create your new password to login',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            CustomTextFild(
              icon: Icons.lock,
              title: 'Enter Your Password',
              suffixIcon: Icons.visibility_off,
              isObsure: true,
            ),
            SizedBox(
              height: 11,
            ),
            CustomTextFild(
              icon: Icons.lock,
              title: 'Enter Your Password',
              suffixIcon: Icons.visibility_off,
              isObsure: true,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Create Passwrod',
              onPressed: () => context.go(loginView),
            ),
          ],
        ),
      ),
    );
  }
}
