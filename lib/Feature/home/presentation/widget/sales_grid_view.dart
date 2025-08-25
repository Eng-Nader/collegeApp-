import 'package:flutter/material.dart';

class SalesGridView extends StatelessWidget {
  const SalesGridView({super.key});
  final List<String> salesImage = const [
    'assets/image/salesman.png',
    'assets/image/salesWoman1.png',
    'assets/image/salesWoman.png',
    'assets/image/salesWoman2.png',
    'assets/image/salesman.png',
    'assets/image/salesWoman1.png',
    'assets/image/salesWoman.png',
    'assets/image/salesWoman2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: salesImage.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 140,
            width: 149,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  salesImage[index],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
