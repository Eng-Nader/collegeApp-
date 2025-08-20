import 'package:college_app/constant.dart';
import 'package:college_app/widget/custom_button.dart';
import 'package:college_app/widget/custom_app_bar.dart';
import 'package:college_app/widget/custom_text_auth.dart';
import 'package:college_app/widget/custom_text_fild.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(title: 'SingUp'),
            SizedBox(
              height: 20,
            ),
            CustomTextFild(
              icon: Icons.person,
              title: 'Enter Your Name',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFild(
              icon: Icons.email,
              title: 'Enter Your Email',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFild(
              icon: Icons.lock,
              title: 'Enter Your password',
              suffixIcon: Icons.lock_open,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'i agree to the medoic ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'Term of Serves  ',
                        style: TextStyle(
                          fontSize: 16,
                          color: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: ' \nand ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'privacy poicly ',
                        style: TextStyle(
                          fontSize: 16,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(title: 'SignUp'),
            SizedBox(
              height: 30,
            ),
            CustomTextAuth(),
          ],
        ),
      ),
    );
  }
}
