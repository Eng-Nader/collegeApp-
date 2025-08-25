import 'package:college_app/Feature/auth/Presentation/widget/custom_app_bar.dart';
import 'package:college_app/Feature/favourite/presentation/widget/favourtie_grid.dart';
import 'package:college_app/Feature/home/presentation/widget/sales_list_view.dart';
import 'package:flutter/material.dart';

class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              CustomAppBar(
                title: 'My Wishlist',
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              const SalesListView(),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
        const FavouriteGrid(),
      ],
    );
  }
}
