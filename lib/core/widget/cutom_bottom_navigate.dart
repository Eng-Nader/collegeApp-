import 'package:flutter/material.dart';

class CutomBottomNavigate extends StatelessWidget {
  const CutomBottomNavigate(
      {super.key, this.onTap, required this.currentIndex});
  final void Function(int)? onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xffDD8560),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "Cart",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorite",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}
