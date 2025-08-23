import 'package:college_app/Feature/home/data/models/categary_model.dart';
import 'package:college_app/Feature/home/presentation/widget/categary_item.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class CategaryListVie extends StatelessWidget {
  const CategaryListVie({super.key});
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
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: categatyList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategaryItem(
            categaryModel: categatyList[index],
          );
        },
      ),
    );
  }
}
