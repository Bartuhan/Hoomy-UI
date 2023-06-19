import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: myHeight(context) * 0.18,
      width: myWidth(context) * 0.42,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
            image: NetworkImage(backGroundUrl), fit: BoxFit.cover),
      ),
    );
  }
}
