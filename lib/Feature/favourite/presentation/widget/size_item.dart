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
        const Text(
          'Size : ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: List.generate(4, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    sizeList[index],
                    style: const TextStyle(
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
