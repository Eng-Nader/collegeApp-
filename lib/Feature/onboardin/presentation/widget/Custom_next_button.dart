import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onTap,
          child: const CircleAvatar(
            backgroundColor: primaryColor,
            radius: 25,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
