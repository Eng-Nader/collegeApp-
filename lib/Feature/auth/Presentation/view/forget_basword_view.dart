import 'package:college_app/Feature/auth/Presentation/widget/custom_button.dart';
import 'package:college_app/Feature/auth/Presentation/widget/custom_text_fild.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetBaswordView extends StatefulWidget {
  const ForgetBaswordView({super.key});

  @override
  State<ForgetBaswordView> createState() => _ForgetBaswordViewState();
}

class _ForgetBaswordViewState extends State<ForgetBaswordView> {
  bool isPhone = false;
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
                      onPressed: () {
                        isPhone = false;
                        setState(() {});
                      },
                      child: Text(
                        'Email',
                        style: TextStyle(
                          color: isPhone == false ? primaryColor : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        isPhone = true;
                        setState(() {});
                      },
                      child: Text(
                        'Phone',
                        style: TextStyle(
                          color: isPhone == true ? primaryColor : Colors.black,
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
            CustomTextFild(
              icon: isPhone == true ? Icons.phone : Icons.email,
              title: isPhone == true ? 'Enter your Phone ' : 'Enter your Email',
            ),
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
