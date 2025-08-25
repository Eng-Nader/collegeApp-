import 'package:college_app/Feature/onboardin/presentation/views/first_screen.dart';
import 'package:college_app/Feature/onboardin/presentation/views/second_screen.dart';
import 'package:college_app/Feature/onboardin/presentation/views/third_screen.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                FirstScreen(
                  currentIndex: currentIndex,
                  onTap: () {
                    setState(() {
                      currentIndex = 1;
                    });
                    context.push(onborderSecond);
                  },
                ),
                SecondScreen(
                  onPrviousTap: () {
                    context.pop();
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  onTap: () {},
                  currentIndex: 2,
                ),
                const ThirdScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
