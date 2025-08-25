import 'package:college_app/constant.dart';
import 'package:college_app/core/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            context.go(loginView);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 30,
          ),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: Image.asset(AppAssets.bell),
        ),
      ],
    );
  }
}
