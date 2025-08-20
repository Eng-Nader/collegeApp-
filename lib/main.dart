import 'package:college_app/helpers/app_route.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const CollegeApp());
}

class CollegeApp extends StatelessWidget {
  const CollegeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF4F5F7),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.router,
    );
  }
}
