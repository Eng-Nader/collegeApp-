import 'package:college_app/Feature/auth/Presentation/widget/custom_app_bar.dart';
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
              SizedBox(
                height: 50,
              ),
              CustomAppBar(
                title: 'My Wishlist',
                onPressed: () {},
              ),
              SizedBox(
                height: 30,
              ),
              SalesListView(),
            ],
          ),
        )
      ],
    );
  }
}
