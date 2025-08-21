import 'package:college_app/constant.dart';
import 'package:college_app/widget/custom_button.dart';
import 'package:flutter/material.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6),
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
                      image: AssetImage('image/Rectangle 348.png'),
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
                                image: AssetImage('image/Rectangle 349.png'))),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('image/Ellipse 57.png'),
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
            CustomButton(title: 'Get Started'),
          ],
        ),
      ),
    );
  }
}
