import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentIndex = 0;
  void getRouter() {
    context.push(introductionView);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image/onboreder$currentIndex.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (currentIndex != 2)
                    Align(
                      alignment: Alignment.centerRight,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        onPressed: getRouter,
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  const Spacer(),
                  const Text(
                    'Welcome To \nFashion',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Opacity(
                    opacity: .8,
                    child: Text(
                      'Discover the latest trends and exclusive styles \nfrom our top designers',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                  Row(
                    children: [
                      if (currentIndex != 0)
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                currentIndex--;
                              });
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      const Spacer(),
                      ...List.generate(
                        3,
                        (index) {
                          return Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.bounceOut,
                                width: currentIndex == index ? 20 : 10,
                                height: currentIndex == index ? 20 : 10,
                                decoration: BoxDecoration(
                                  color: currentIndex == index
                                      ? primaryColor
                                      : Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ));
                        },
                      ),
                      const Spacer(),
                      FloatingActionButton(
                        backgroundColor: primaryColor,
                        shape: const CircleBorder(),
                        onPressed: () {
                          currentIndex != 2
                              ? setState(() {
                                  currentIndex++;
                                })
                              : getRouter();
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
