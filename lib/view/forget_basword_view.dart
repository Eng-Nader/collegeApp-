import 'package:college_app/constant.dart';
import 'package:college_app/widget/custom_button.dart';
import 'package:college_app/widget/custom_text_fild.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetBaswordView extends StatelessWidget {
  const ForgetBaswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  context.go(loginView);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Forget Your Password ?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Opacity(
              opacity: .4,
              child: Text(
                'Enter your email or your phone number, we will send you confirmation code',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Email',
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Phone',
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFild(icon: Icons.email, title: 'Enter Your Email'),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              title: 'Reset Passwrod',
              onPressed: () {
                context.go(resentpassword);
              },
            )
          ],
        ),
      ),
    );
  }
}
