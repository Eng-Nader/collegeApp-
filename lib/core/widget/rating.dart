import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Text(
          '4.9',
          style: TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
