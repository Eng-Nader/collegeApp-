import 'package:college_app/Feature/home/presentation/widget/categary_list_view.dart';
import 'package:college_app/Feature/home/presentation/widget/home_app_bar.dart';
import 'package:college_app/Feature/home/presentation/widget/home_collection.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          HomeAppBar(),
          SizedBox(
            height: 28,
          ),
          HomeCollection(),
          SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categary',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Opacity(
                opacity: .4,
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 17,
          ),
          CategaryListVie(),
        ],
      ),
    ));
  }
}
