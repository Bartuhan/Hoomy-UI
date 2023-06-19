import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeadLineText extends StatelessWidget {
  const HeadLineText({
    super.key,
    required this.headline,
  });

  final String headline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headline,
            style: const TextStyle(
                color: kHeadLineColor,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const Text(
            "Show all",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
