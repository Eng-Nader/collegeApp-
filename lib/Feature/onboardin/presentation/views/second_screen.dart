import 'package:college_app/Feature/onboardin/presentation/widget/custom_indecator.dart';
import 'package:college_app/Feature/onboardin/presentation/widget/Custom_next_button.dart';
import 'package:college_app/Feature/onboardin/presentation/widget/skip_botton.dart';
import 'package:college_app/constant.dart';
import 'package:college_app/core/assets/app_assets.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen(
      {super.key, required this.currentIndex, required this.onTap, required this.onPrviousTap});
  final int currentIndex;
  final VoidCallback onTap;
  final VoidCallback onPrviousTap;

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
                  AppAssets.onBorderMan2,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 180,
            left: 20,
            child: Text(
              'Explore & Shop',
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
                'Discover a wide range of fashion categories,\nbrowse new arrivals and shop your favourites',
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
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPreviousButton(
                    onTap:  onPrviousTap,
                  ),
                  CustomNextButton(
                    onTap: onTap,
                  ),
                ],
              ),
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

class CustomPreviousButton extends StatelessWidget {
  const CustomPreviousButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: const CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 25,
          child: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}
