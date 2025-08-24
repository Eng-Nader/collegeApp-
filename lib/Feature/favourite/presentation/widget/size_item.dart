import 'package:flutter/material.dart';

class SizeItem extends StatelessWidget {
  const SizeItem({super.key});
  final List<String> sizeList = const [
    'S',
    'M',
    'L',
    'XL',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Size : ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: List.generate(4, (index) {
            return Padding(
              padding: EdgeInsets.only(left: 16),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    sizeList[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
        )
      ],
    );
  }
}
