import 'package:flutter/material.dart';

class CutomBottomNavigate extends StatefulWidget {
  const CutomBottomNavigate({super.key});

  @override
  State<CutomBottomNavigate> createState() => _CutomBottomNavigateState();
}

class _CutomBottomNavigateState extends State<CutomBottomNavigate> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xffDD8560),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorite",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}
