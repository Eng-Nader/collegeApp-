import 'package:college_app/Feature/auth/Presentation/widget/custom_app_bar.dart';
import 'package:college_app/Feature/auth/Presentation/widget/custom_button.dart';
import 'package:college_app/Feature/auth/Presentation/widget/custom_fild_buttom.dart';
import 'package:college_app/Feature/auth/Presentation/widget/custom_text_auth.dart';
import 'package:college_app/Feature/auth/Presentation/widget/custom_text_fild.dart';
import 'package:college_app/constant.dart';
import 'package:college_app/core/assets/app_assets.dart';
import 'package:college_app/core/function/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              CustomAppBar(
                title: 'Login',
                onPressed: () => context.go('/'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Hi Welcome Back , you have been Missed',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextFild(
                icon: Icons.email,
                title: 'Enter your Email',
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextFild(
                icon: Icons.lock,
                title: 'Enter your password',
                suffixIcon: Icons.visibility_off,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: primaryColor,
                  ),
                  onPressed: () {
                    context.go(forgetPassword);
                  },
                  child: const Text(
                    'Forget password',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                title: 'Login',
                onPressed: () {
                  showSucessDiaglog(
                    context: context,
                    content: 'Yeay! Welcome Back',
                    subContent:
                        'Once again you login successfully\ninto medidoc app',
                    titelButtom: 'Go to Home',
                    onPressed: () => context.go(homeView),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextAuth(),
              const SizedBox(
                height: 50,
              ),
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'OR',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Positioned(
                    child: Divider(),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const CustomFildButoom(
                image: AppAssets.googleLogo,
                title: 'Sign in With Google',
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomFildButoom(
                image: AppAssets.facebookLogo,
                title: 'Sign in With FaceBook ',
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomFildButoom(
                image: AppAssets.appleLogo,
                title: 'Sign in With Apple',
              )
            ],
          ),
        ),
      ),
    );
  }
}
