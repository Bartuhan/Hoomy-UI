import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.icon,
    required this.menuText,
  });

  final IconData icon;
  final String menuText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        height: myHeight(context) * 1,
        width: myWidth(context) * 0.25,
        decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(icon, size: 25, color: Colors.white),
            ),
            Text(
              menuText,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
