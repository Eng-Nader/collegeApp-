import 'package:college_app/Feature/home/data/models/categary_model.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class CategaryItem extends StatelessWidget {
  const CategaryItem({
    super.key,
    required this.categaryModel,
    required this.isActive,
    required this.onTap,
  });
  final CategaryModel categaryModel;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: isActive ? primaryColor : Colors.white,
              child: CircleAvatar(
                radius: 33,
                backgroundColor: const Color(0xffF4F5F7),
                child: Image.asset(categaryModel.image),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            categaryModel.text,
            style: TextStyle(
              color: isActive ? primaryColor : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
