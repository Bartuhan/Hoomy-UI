import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "House of Goomy",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const SizedBox(height: 3),
            Text("Bali İndonesia",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
          ],
        ),
        Container(
          height: myHeight(context) * 0.05,
          width: myWidth(context) * 0.25,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 1),
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Center(
            child: RichText(
                text: const TextSpan(
                    text: "\$320",
                    style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                  TextSpan(
                      text: "/month",
                      style: TextStyle(color: Colors.grey, fontSize: 12))
                ])),
          ),
        ),
      ],
    );
  }
}
