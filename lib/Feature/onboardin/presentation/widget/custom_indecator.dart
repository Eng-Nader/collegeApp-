import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class CustomIndector extends StatelessWidget {
  const CustomIndector({super.key, required this.color, });
   final Color color ; 

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius:  5 ,
      backgroundColor: color , 
    ) ; 
  }
}
