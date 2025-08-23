import 'package:college_app/constant.dart';
import 'package:college_app/core/assets/app_assets.dart';
import 'package:flutter/material.dart';

class HomeCollection extends StatelessWidget {
  const HomeCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        width: 355,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    'New Collection',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Opacity(
                    opacity: .8,
                    child: Text(
                      'Disscount 50% for\nthe first transaction',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      foregroundColor: Colors.white,
                      elevation: 4,
                    ),
                    onPressed: () {},
                    child: Text('ShopNow'),
                  ),
                ],
              ),
              SizedBox(
                width: 55,
              ),
              Image.asset(
                AppAssets.collectionCloses,
                height: 155,
                width: 125,
              ),
            ],
          ),
        ));
  }
}
