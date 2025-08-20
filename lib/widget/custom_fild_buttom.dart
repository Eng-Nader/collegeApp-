

import 'package:flutter/material.dart';

class CustomFildButoom extends StatelessWidget {
  const CustomFildButoom({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(400, 56),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Image.asset(
            image,
            height: 30,
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
