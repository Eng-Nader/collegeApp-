import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class CustomIndector extends StatelessWidget {
  const CustomIndector({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        seconds: 1,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(120),
        color: isActive ? primaryColor : Colors.white,
      ),
      width: isActive ? 40 : 10,
      height: 10,
    );
  }
}
