import 'package:college_app/Feature/home/presentation/widget/categary_list_view.dart';
import 'package:college_app/Feature/home/presentation/widget/home_app_bar.dart';
import 'package:college_app/Feature/home/presentation/widget/home_collection.dart';
import 'package:college_app/Feature/home/presentation/widget/sales_grid_view.dart';
import 'package:college_app/Feature/home/presentation/widget/sales_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
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
                  height: 10,
                ),
                CategaryListView(),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Flash Sale',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SalesListView(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SalesGridView(),
      ],
    );
  }
}
