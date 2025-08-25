import 'package:college_app/Feature/onboardin/presentation/views/first_screen.dart';
import 'package:college_app/Feature/onboardin/presentation/views/second_screen.dart';
import 'package:college_app/Feature/onboardin/presentation/views/third_screen.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                const FirstScreen(),
                const SecondScreen(),
                const ThirdScreen(),
              ],
            ),
          ),
          const Row(
            children: [],
          )
        ],
      ),
    );
  }
}

class CustomIndector extends StatelessWidget {
  const CustomIndector({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 250,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(120),
        color: isActive ? primaryColor : Colors.white,
      ),
      width: isActive ? 40 : 10,
      height: 20,
    );
  }
}
