import 'package:college_app/Feature/home/data/models/sales_model.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class SalesItem extends StatelessWidget {
  const SalesItem(
      {super.key,
      required this.salesModel,
      required this.onTap,
      required this.isActive});
  final SalesModel salesModel;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 100,
          decoration: BoxDecoration(
              color: isActive ? primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            textAlign: TextAlign.center,
            salesModel.text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isActive ? Colors.white : Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
