import 'package:college_app/constant.dart';
import 'package:college_app/core/assets/app_assets.dart';
import 'package:flutter/material.dart';

class HomeCollection extends StatelessWidget {
  const HomeCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
          height: 160,
          width: 355,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            child: Row(
              children: [
                Column(
                  children: [
                    const Text(
                      'New Collection',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Opacity(
                      opacity: .8,
                      child: Text(
                        'Disscount 50% for\nthe first transaction',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        foregroundColor: Colors.white,
                        elevation: 4,
                      ),
                      onPressed: () {},
                      child: const Text('ShopNow'),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 55,
                ),
                Image.asset(
                  AppAssets.collectionCloses,
                  height: 155,
                  width: 125,
                ),
              ],
            ),
          )),
    );
  }
}
