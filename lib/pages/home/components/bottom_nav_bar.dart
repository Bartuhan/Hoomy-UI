import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'menu_button.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        height: myHeight(context) * 0.072,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            MenuButton(icon: Icons.home, menuText: "Home"),
            MenuButton(icon: Icons.person, menuText: "Profile"),
            MenuButton(icon: Icons.settings, menuText: "Settings"),
          ],
        ),
      ),
    );
  }
}
