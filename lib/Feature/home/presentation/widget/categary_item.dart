import 'package:college_app/Feature/home/data/models/categary_model.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class CategaryItem extends StatelessWidget {
  const CategaryItem({super.key, required this.categaryModel});
  final CategaryModel categaryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 60,
        child: Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                  radius: 33,
                  backgroundColor: Color(0xffF4F5F7),
                  child: Image.asset(categaryModel.image)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              categaryModel.text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
