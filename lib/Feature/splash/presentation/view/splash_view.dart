import 'package:college_app/Feature/splash/presentation/widget/splash_view_body.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(
        const Duration(seconds: 2),
        () {
          if (context.mounted) {
            context.go(introductionView);
          }
        },
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: SplashViewBody(),
    );
  }
}
