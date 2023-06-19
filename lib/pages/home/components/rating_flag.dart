import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RatingFlag extends StatelessWidget {
  const RatingFlag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: myHeight(context) * 0.030,
      width: myWidth(context) * 0.13,
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.horizontal(left: Radius.circular(50))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.star,
            size: 15,
            color: Colors.yellow,
          ),
          Text("4,5",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
