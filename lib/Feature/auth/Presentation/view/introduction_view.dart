import 'package:college_app/Feature/auth/Presentation/widget/custom_button.dart';
import 'package:college_app/constant.dart';
import 'package:college_app/core/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 370,
                    width: 137,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppAssets.manLoog),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        Container(
                          height: 214,
                          width: 137,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                AppAssets.man2Logo,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            AppAssets.womanLogo,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 33,
              ),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'The ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: 'Suits App ',
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: 'that \n Makes Your Look Your Best',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Opacity(
                opacity: .8,
                child: Text(
                  textAlign: TextAlign.center,
                  'Everything you need in the world \nof fashion, old and new',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 61,
              ),
              CustomButton(
                title: 'Get Started',
                onPressed: () {
                  context.go(loginView);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
