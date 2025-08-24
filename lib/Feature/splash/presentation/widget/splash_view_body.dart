import 'package:college_app/core/assets/app_assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                height: 100,
                width: 100,
                AppAssets.splashLogo,
              ),
              SizedBox(
                width: 15,
              ),
              Image.asset(
                height: 100,
                width: 100,
                AppAssets.splashLogo2,
              ),
            ],
          )
        ],
      ); 
  }
}