import 'package:college_app/Feature/favourite/presentation/widget/favourtie_item.dart';
import 'package:flutter/material.dart';

class FavouriteGrid extends StatelessWidget {
  const FavouriteGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return FavouriteItem();
      },
    );
  }
}