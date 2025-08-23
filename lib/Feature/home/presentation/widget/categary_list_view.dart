import 'package:college_app/Feature/home/data/models/categary_model.dart';
import 'package:college_app/Feature/home/presentation/widget/categary_item.dart';
import 'package:flutter/material.dart';

class CategaryListVie extends StatefulWidget {
  const CategaryListVie({super.key});

  @override
  State<CategaryListVie> createState() => _CategaryListVieState();
}

class _CategaryListVieState extends State<CategaryListVie> {
  final List<CategaryModel> categatyList = const [
    CategaryModel(
      'assets/image/Blazar.png',
      'Blazer',
    ),
    CategaryModel(
      'assets/image/shirt.png',
      'T-Shirt',
    ),
    CategaryModel(
      'assets/image/shoes.png',
      'Men-Shoes',
    ),
    CategaryModel(
      'assets/image/womanshorex.png',
      'Woman-Shoes',
    ),
    CategaryModel(
      'assets/image/Blazar.png',
      'Blazer',
    ),
    CategaryModel(
      'assets/image/shoes.png',
      'Men-Shoes',
    ),
    CategaryModel(
      'assets/image/womanshorex.png',
      'Woman-Shoes',
    ),
    CategaryModel(
      'assets/image/shirt.png',
      'T-Shirt',
    ),
    CategaryModel(
      'assets/image/womanshorex.png',
      'Woman-Shoes',
    ),
    CategaryModel(
      'assets/image/Blazar.png',
      'Blazer',
    ),
    CategaryModel(
      'assets/image/shoes.png',
      'Men-Shoes',
    ),
    CategaryModel(
      'assets/image/womanshorex.png',
      'Woman-Shoes',
    ),
    CategaryModel(
      'assets/image/shirt.png',
      'T-Shirt',
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: categatyList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategaryItem(
            categaryModel: categatyList[index],
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            isActive: currentIndex == index,
          );
        },
      ),
    );
  }
}
