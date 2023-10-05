import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BtBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BtBar({super.key, required this.onTabChange});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: 'Cart',
            ),
          ]),
    );
  }
}
