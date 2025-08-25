import 'package:college_app/Feature/auth/Presentation/widget/custom_app_bar.dart';
import 'package:college_app/Feature/auth/Presentation/widget/custom_button.dart';
import 'package:college_app/Feature/auth/Presentation/widget/custom_text_auth.dart';
import 'package:college_app/Feature/auth/Presentation/widget/custom_text_fild.dart';
import 'package:college_app/constant.dart';
import 'package:college_app/core/function/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: 'SingUp',
              onPressed: () => context.go(loginView),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFild(
              icon: Icons.person,
              title: 'Enter Your Name',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextFild(
              icon: Icons.email,
              title: 'Enter Your Email',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextFild(
              icon: Icons.lock,
              title: 'Enter Your password',
              suffixIcon: Icons.lock_open,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                const Text.rich(
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
            const SizedBox(
              height: 40,
            ),
            CustomButton(
              title: 'SignUp',
              onPressed: () {
                showSucessDiaglog(
                    context: context,
                    content: 'Success',
                    titelButtom: 'Login',
                    subContent:
                        'Your account has been successfully\nregistered',
                    onPressed: () => context.go(loginView));
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextAuth(),
          ],
        ),
      ),
    );
  }
}
