import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class MiniPic extends StatelessWidget {
  const MiniPic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: myHeight(context) * 0.072,
      width: myWidth(context) * 0.16,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        image: DecorationImage(
            image: NetworkImage(backGroundUrl), fit: BoxFit.cover),
      ),
    );
  }
}
