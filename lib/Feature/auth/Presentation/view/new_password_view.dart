import 'package:college_app/Feature/auth/Presentation/widget/custom_button.dart';
import 'package:college_app/Feature/auth/Presentation/widget/custom_text_fild.dart';
import 'package:college_app/constant.dart';
import 'package:college_app/core/function/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            IconButton(
              onPressed: () => context.go(resentpassword),
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            const Text(
              'Create New Password',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Create your new password to login',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const CustomTextFild(
              icon: Icons.lock,
              title: 'Enter Your Password',
              suffixIcon: Icons.visibility_off,
              isObsure: true,
            ),
            const SizedBox(
              height: 11,
            ),
            const CustomTextFild(
              icon: Icons.lock,
              title: 'Enter Your Password',
              suffixIcon: Icons.visibility_off,
              isObsure: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Create Passwrod',
              onPressed: () {
                showSucessDiaglog(
                    context: context,
                    content: 'Success',
                    titelButtom: 'Login',
                    subContent:
                        'Your account has been successfully\nregistered', 
                        onPressed: () => context.go(loginView),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
