import 'package:flutter/material.dart';

class SalesGridView extends StatelessWidget {
  const SalesGridView({super.key});
  final List<String> salesImage = const [
    'assets/image/salesman.png',
    'assets/image/salesWoman1.png',
    'assets/image/salesWoman.png',
    'assets/image/salesWoman2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisSpacing: 20,
      ),
      itemCount: salesImage.length,
      itemBuilder: (context, index) {
        return Container(
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
        );
      },
    );
  }
}
