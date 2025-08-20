import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild(
      {super.key, required this.icon, required this.title, this.suffixIcon});
  final IconData icon;
  final String title;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(suffixIcon),
        hint: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
            Text(title),
          ],
        ),
        fillColor: Color(0xffF9FAFB),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: primaryColor,
            )),
      ),
    );
  }
}
