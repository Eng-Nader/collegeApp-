import 'package:college_app/Feature/home/data/models/sales_model.dart';
import 'package:college_app/Feature/home/presentation/widget/sales_item.dart';
import 'package:flutter/material.dart';

class SalesListView extends StatefulWidget {
  const SalesListView({super.key});

  @override
  State<SalesListView> createState() => _SalesListViewState();
}

class _SalesListViewState extends State<SalesListView> {
  final List<SalesModel> salesList = const [
    SalesModel(
      'All',
    ),
    SalesModel(
      'Populr',
    ),
    SalesModel(
      'Woman',
    ),
    SalesModel(
      'Men',
    ),
    SalesModel(
      'Populr',
    ),
    SalesModel(
      'Men',
    ),
    SalesModel(
      'Woman',
    ),
    SalesModel(
      'Populr',
    ),
    SalesModel(
      'Woman',
    ),
    SalesModel(
      'Men',
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: salesList.length,
        itemBuilder: (context, index) {
          return SalesItem(
            salesModel: salesList[index],
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
