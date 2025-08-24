import 'package:college_app/Feature/favourite/presentation/widget/show_bottom_deaials.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavourteViewDetailsBody extends StatelessWidget {
  const FavourteViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/image/saleswoman5.png',
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30,
              ),
            ),
          ),
          ShowBottomDetials()
        ],
      ),
    );
  }
}
