import 'package:flutter/material.dart';

class ColorItem extends StatefulWidget {
  const ColorItem({super.key});

  @override
  State<ColorItem> createState() => _ColorItemState();
}

class _ColorItemState extends State<ColorItem> {
  final List<Color> colorList = const [
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.yellow,
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Color : ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: List.generate(
            4,
            (index) {
              return GestureDetector(
                onTap: () {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor:
                        currentIndex == index ? Colors.white : Colors.grey,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: colorList[index],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
