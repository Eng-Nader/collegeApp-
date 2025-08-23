import 'package:college_app/Feature/home/presentation/views/card_view.dart';
import 'package:college_app/Feature/home/presentation/views/favourite_view.dart';
import 'package:college_app/Feature/home/presentation/widget/home_view_body.dart';
import 'package:college_app/Feature/profile/presentation/view/profile_view.dart';
import 'package:college_app/core/widget/cutom_bottom_navigate.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Widget> screenView = const [
    HomeViewBody(),
    CardView(),
    FavouriteView(),
    ProfileView(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screenView,
      ),
      bottomNavigationBar: CutomBottomNavigate(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
