import 'package:college_app/Feature/auth/Presentation/widget/custom_button.dart';
import 'package:college_app/Feature/auth/Presentation/widget/item_otp.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResentPasswordView extends StatelessWidget {
  const ResentPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            IconButton(
              onPressed: () => context.go(forgetPassword),
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Enter Verification Code',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text.rich(
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
            const SizedBox(
              height: 33,
            ),
            const ItemOtp(),
            const SizedBox(
              height: 31,
            ),
            CustomButton(
                title: 'Verify',
                onPressed: () {
                  context.go(newPasswrod);
                }),
            const SizedBox(
              height: 24,
            ),
            const Align(
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
