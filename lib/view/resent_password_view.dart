import 'package:college_app/constant.dart';
import 'package:college_app/widget/custom_button.dart';
import 'package:college_app/widget/item_otp.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResentPasswordView extends StatelessWidget {
  const ResentPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            IconButton(
              onPressed: () => context.go(forgetPassword),
              icon: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Enter Verification Code',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Enter code that we have sent to your\n number',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: ' 08528188*** ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 33,
            ),
            ItemOtp(),
            SizedBox(
              height: 31,
            ),
            CustomButton(
                title: 'Verify',
                onPressed: () {
                  context.go(newPasswrod);
                }),
            SizedBox(
              height: 24,
            ),
            Align(
              alignment: Alignment.center,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Didn’t receive the code? ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Resend',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
