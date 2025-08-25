import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SkipBotton extends StatelessWidget {
  const SkipBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          side: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          )),
      onPressed: () {
        context.go(introductionView);
      },
      child: const Text(
        'Skip',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
