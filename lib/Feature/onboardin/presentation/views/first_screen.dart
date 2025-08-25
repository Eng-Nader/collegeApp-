import 'package:college_app/Feature/onboardin/presentation/widget/custom_indecator.dart';
import 'package:college_app/Feature/onboardin/presentation/widget/Custom_next_button.dart';
import 'package:college_app/Feature/onboardin/presentation/widget/skip_botton.dart';
import 'package:college_app/constant.dart';
import 'package:college_app/core/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(
      {super.key, required this.currentIndex, required this.onTap});
  final int currentIndex;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AppAssets.onBorderMan,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 180,
            left: 20,
            child: Text(
              'Welcome To \n Fashion',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            bottom: 130,
            left: 20,
            child: Opacity(
              opacity: .9,
              child: Text(
                'Discover the latest trends and exclusive styles \n from our top designers',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIndector(isActive: currentIndex == 0),
                const SizedBox(
                  width: 5,
                ),
                CustomIndector(isActive: currentIndex == 1),
                const SizedBox(
                  width: 5,
                ),
                CustomIndector(isActive: currentIndex == 2),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            left: 320,
            child: CustomNextButton(
              onTap: onTap,
            ),
          ),
          const Positioned(
            top: 50,
            right: 20,
            child: SkipBotton(),
          ),
        ],
      ),
    );
  }
}
